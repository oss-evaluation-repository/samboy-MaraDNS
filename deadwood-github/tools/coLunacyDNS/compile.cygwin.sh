#!/bin/sh

# With only one file, I will not bother with a Makefile

cd ../../lunacy/
make 
cd ../tools/coLunacyDNS/
gcc -DXTRA -DCYGWIN -Os -c -o coLunacyDNS.o coLunacyDNS.c
gcc -Os -o coLunacyDNS coLunacyDNS.o ../../lunacy/liblua.a -lm
