#!/bin/python3

import socket
from time import sleep
import numpy as np
from collections import deque

simulation_output_socket = "../simulation_output_socket"

import time
from collections import deque

import matplotlib
matplotlib.use('Qt5Cairo')
import matplotlib.pyplot as plt
import matplotlib.animation as animation


start = time.time()

// ref: https://gist.github.com/Uberi/283a13b8a71a46fb4dc8
class RealtimePlot:
    def __init__(self, axes, max_entries = 100):
        self.axis_x = deque(maxlen=max_entries)
        self.axis_y = deque(maxlen=max_entries)
        self.axes = axes
        self.max_entries = max_entries

        self.lineplot, = axes.plot([], [], "ro-")
        self.axes.set_autoscaley_on(True)

    def add(self, x, y):
        self.axis_x.append(x)
        self.axis_y.append(y)
        self.lineplot.set_data(self.axis_x, self.axis_y)
        self.axes.set_xlim(self.axis_x[0], self.axis_x[-1] + 1e-15)
        self.axes.relim(); self.axes.autoscale_view() # rescale the y-axis

    def animate(self, figure, callback, interval = 50):
        def wrapper(frame_index):
            self.add(*callback(frame_index))
            self.axes.relim(); self.axes.autoscale_view() # rescale the y-axis
            return self.lineplot
        animation.FuncAnimation(figure, wrapper, interval=interval)

def main():
    with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as s:
        print(f"connecting to {simulation_output_socket}...", end='')
        try_to_connect = True
        while try_to_connect:
            try:
                try_to_connect = (s.connect_ex(simulation_output_socket) == 0)
            except socket.error as e:
                print(f"error: {e}")

            # Create plot
            fig, axes = plt.subplots()
            display = RealtimePlot(axes)

            # Get data from socket
            with s.makefile("r") as fp:
                while(1):
                    line = ''
                    for char in fp.readline():
                        line += char
                        data = np.fromstring(line, dtype=float, sep=',\n')
                    print("data:", data)

                    time = data[0]
                    Ro = data[1]
                    Vpv = data[2]
                    Ipv = data[3]
                    D = data[4]

                    # Add data to graph
                    display.add(time, Vpv)
                    plt.pause(0.001)


if __name__ == "__main__": main()
