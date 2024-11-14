#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys, os
import serial
import numpy as np
import argparse
import time
description = """
Generate some random bytes and send them to the USB serial port.
Then display the sum (on 32 bits in hexadecimal) of the bytes sent.
"""

def main():
    parser = argparse.ArgumentParser(description=description)
    parser.add_argument("-p", "--port",
                        help="Set the USB port to use for serial communication. Defaults to /dev/tty.usbmodem0007793538251",
                        type=str,
                        default="/dev/tty.usbmodem0007793538251")
    parser.add_argument("-s", "--speed",
                        help="Set serial port speed. Defaults to 115200.",
                        type=int,
                        default=115200)
    parser.add_argument("-n", "--num",
                        help="Set the number of bytes to send. Default to 1000. Must be between 100 and 100000",
                        type=int,
                        default=1000)
    parser.add_argument("-v", "--verbosity", action="store_true",
                        help="Display bytes sent on serial port.")
    args = parser.parse_args()

    # Check num
    if args.num < 100 or args.num > 100000:
        print("Error : invalid num parameter: %d\n"%args.num)
        parser.print_help()
        sys.exit(-1)

    # Open serial port
    try:
        ser = serial.Serial(args.port, args.speed)
    except serial.SerialException as err:
        print(err)
        sys.exit(-1)

    # Generate random bytes
    array = np.random.randint(0, 256, args.num)

    # Calculate sum of bytes
    sum = np.sum(array)%(2**32)

    # Send bytes
    for i in range(args.num):
        ser.write(bytes((array[i],)))
        if args.verbosity:
            print("Sent 0x%x" % (array[i]))
        time.sleep(0.001) # 1ms
    # Close serial port
    ser.close()

    # Print sum
    print("Sum of bytes sent on UART (hex) = 0x%x" % sum)
    print("Sum of bytes sent on UART (uint32) = %s" % np.uint32(sum))

if __name__== "__main__":
    main()