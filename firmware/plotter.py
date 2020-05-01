#!/bin/python3

import socket
from time import sleep
import numpy as np
from collections import deque

simulation_output_socket = "simulation_output_socket"

import time
from collections import deque

import matplotlib
matplotlib.use('Qt5Cairo')
import matplotlib.pyplot as plt
plt.style.use('Solarize_Light2')
import matplotlib.animation as animation


start = time.time()

# ref: https://gist.github.com/Uberi/283a13b8a71a46fb4dc8
class RealtimePlot:
    def __init__(self, axes, max_entries = 100, fmt="-", title=None, xlabel=None, ylabel=None, invertx=False):
        if max_entries == None:
            max_entries = 10000
        self.axis_x = deque(maxlen=max_entries)
        self.axis_y = deque(maxlen=max_entries)
        self.axes = axes
        self.max_entries = max_entries
        self.title = title
        self.xlabel = xlabel
        self.ylabel = ylabel
        self.invertx = invertx

        self.axes.set_title(self.title)
        self.axes.set_xlabel(self.xlabel)
        self.axes.set_ylabel(self.ylabel)

        self.lineplot, = axes.plot([], [], fmt)
        self.axes.set_autoscaley_on(True)

    def add(self, x, y):
        self.axis_x.append(x)
        self.axis_y.append(y)
        self.lineplot.set_data(self.axis_x, self.axis_y)
        if not self.invertx:
            self.axes.set_xlim(self.axis_x[0], self.axis_x[-1] + 1e-15)
        else:
            self.axes.set_xlim(self.axis_x[-1], self.axis_x[0] + 1e-15)
        self.axes.relim(); self.axes.autoscale_view() # rescale the y-axis

    def animate(self, figure, callback, interval = 50):
        def wrapper(frame_index):
            self.add(*callback(frame_index))
            self.axes.relim(); self.axes.autoscale_view() # rescale the y-axis
            return self.lineplot
        animation.FuncAnimation(figure, wrapper, interval=interval)

def main():
    with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as s:

        # Connect
        try_to_connect = True
        print(f"Connecting to socket [{simulation_output_socket}]...")
        while try_to_connect:
            try:
                try_to_connect = (s.connect_ex(simulation_output_socket) != 0)
            except socket.error as e:
                print(f"error: {e}")
        print(f"Connected to socket [{simulation_output_socket}].")

        # Create plot
        fig, axes = plt.subplots(2,3)
        Ro_Plot = RealtimePlot(axes[0,0], 100, "-", "Ro over time", "time [s]", "Resistance [Ohms]")
        D_Plot = RealtimePlot(axes[0,1], 100, "-", "Duty Cycle over time", "time [s]", "")
        Vpv_Plot = RealtimePlot(axes[1,0], 100, "-", "Panel Voltage over time", "time [s]", "Voltage [V]")
        Ipv_Plot = RealtimePlot(axes[1,1], 100, "-", "Panel Current over time", "time [s]", "Current [A]")
        Pvp_Plot = RealtimePlot(axes[0,2], 100, "-", "Panel Power over time", "time [s]", "Power [W]")
        IV_Plot = RealtimePlot(axes[1,2], None, "x", "Panel Voltage vs Current", "Voltage [V]", "Current [A]", invertx=True)
        tight = False

        # Plot data from socket
        try_to_plot = True
        data_count = 0
        with s.makefile("r") as fp:
            while try_to_plot:
                line = ''
                for char in fp.readline():
                    line += char
                    data = np.fromstring(line, dtype=float, sep=',\n')
                print("data:", data)

                # Separate data
                time = data[0]
                Ro = data[1]
                Vpv = data[2]
                Ipv = data[3]
                D = data[4]
                Pvp = Ipv * Vpv

                # Add data to graph
                Ro_Plot.add(time, Ro)
                D_Plot.add(time, D)
                Vpv_Plot.add(time, Vpv)
                Ipv_Plot.add(time, Ipv)
                Pvp_Plot.add(time, Pvp)

                # Graph update
                data_count += 1
                if data_count >= 1:
                    data_count = 0
                    plt.pause(0.001)
                    if Vpv < 80:    # don't plot misleading startup points
                        IV_Plot.add(Vpv, Ipv)
                        # Tight only once, and do it only after some data plotted
                        if not tight:
                            plt.tight_layout()
                            tight = True

if __name__ == "__main__": main()
