#!/bin/python3

import socket
from time import sleep
import numpy as np
from collections import deque

simulation_output_socket = "../simulation_output_socket"


if __name__ == "__main__":
    with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as s:
        print(f"connecting to {simulation_output_socket}...", end='')
        try_to_connect = True
        while try_to_connect:
            try:
                try_to_connect = (s.connect_ex(simulation_output_socket) == 0)
            except socket.error as e:
                print(f"error: {e}")

            with s.makefile("r") as fp:
                while(1):
                    line = ''
                    lines = list()
                    for char in fp.readline():
                        line += char
                        values = np.fromstring(line, dtype=float, sep=',\n')
                    print("data:", values)


