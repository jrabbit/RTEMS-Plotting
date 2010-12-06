#!/usr/bin/env python
import sys
import os 

def main(folder):
    data = os.walk(folder).next[2] #file list
    for record in data:
        spaces_to_commas(os.path.join(folder, record))

def spaces_to_commas(q):
    f = open(q, 'r+')
    for line in f:
        datum = line.split()
        date = datum[0].split('/')[0]
        line = date + ',' datum[1]  # remove excess data
    f.close()

if __name__ == '__main__':
    main(sys.argv[0])