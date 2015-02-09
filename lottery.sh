#!/bin/bash

echo "Lotto numbers:"
#print the first six number from 1 to 45, sorted randomly
seq 45 | sort -R | head -6
