#!/bin/sh

free --mebi | sed -n '2{p;q}' | awk '{printf ("󰍛 %2.2fGB\n", ( $3 / 1024))}'
