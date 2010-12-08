#!/usr/bin/env python
import sys
import os 

def main(folder):
    data = os.listdir(folder)
    for record in data:
        if record[-3:] == 'dat':
            print os.path.join(folder, record)
            spaces_to_commas(os.path.join(folder, record))

def spaces_to_commas(q):
    print "actually doing something"
    f = open(q, 'r')
    lines = f.readlines()
    x = open(q+'.new', 'w')
    os.rename(q, q+"~")
    for line in lines:
        datum = line.split()
        date = datum[0].split('/')[0]
        new = date + ',' + datum[1]  # remove excess data
        x.write(new + '\n')
    os.rename(q+'.new', q )
    os.remove(q+'~')

if __name__ == '__main__':
    main(sys.argv[1])