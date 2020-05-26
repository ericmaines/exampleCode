#! /usr/bin/env python2

import random, sys
from itertools import *
from copy import deepcopy
from collections import deque, defaultdict

debugging = False

# Loads text files formatted with
# rows first, blank line, then cols
# blanks are a 0
example = """\
2
2 1
1 1
3
1 1
1 1
2
1 1
1 2
2

2 1
2 1 3
7
1 3
2 1
"""

# one big dict for everything!
# grid has tuple keys to point objects
# grid has -int keys to row tuple
# grid has +int keys to col tuple
# r/c tuple is (clue list, point list)
# everything is change-in-place

rows, cols = '', ''

class Point(object):
    "0: unknown, 1: filled, -1: empty"
    # using an object for free updates across references
    def __init__(self):
        self.i = 0
    def __repr__(self):
        chars = {0:'~', -1:' ', 1:'O'}
        return chars[self.i]

def parse_clue(clue):
    for line in clue.split('\n'):
        c1 = map(int, filter(bool, line.split(' ')))
        yield c1

def load_file(path):
    f = open(path).readlines()
    load_string(''.join(f))

def load_string(f):
    global rows, cols
    rows,cols = '',''
    r,null,c = f.partition('\n\n')
    rows = r.strip()
    cols = c.strip()

def load_grid():
    height = len(rows.split('\n'))
    width  = len(cols.split('\n'))
    grid = defaultdict(Point)
    # points get implicitly inserted
    # link rows and cols to points
    # add one to stuff because you can't have row +0 and col -0
    for x,clue in enumerate(parse_clue(cols)):
        x += 1
        grid[x] = (clue, [grid[(x,y+1)] for y in range(height)])
    for y,clue in enumerate(parse_clue(rows)):
        y += 1
        grid[-y]  = (clue, [grid[(x+1,y)] for x in range(width)])
    return grid

def show(grid):
    height = len(rows.split('\n'))
    width  = len(cols.split('\n'))
    for y,x in product(range(height), range(width)):
        print grid[(x+1,y+1)],
        if x == width-1:
            print

def finished(grid):
    return not any(k for k,v in grid.items() if type(k)==tuple and v.i==0)

def map2d(fn, grid):
    "apply fn to row, cols in both directions"
    kset = set(k for k in grid if type(k) == int)
    changed = False
    for k in kset:
        pi1 = ''.join(repr(p) for p in grid[k][1])
        c1 = deepcopy(grid[k][0])
        fn(*grid[k])
        grid[k][0].reverse()  # clue
        grid[k][1].reverse()  # points
        clean(grid)
        if k in grid:
            fn(*grid[k])
        clean(grid)
        # perfectly okay to leave it backwards though
        if k in grid:
            grid[k][0].reverse()  # clue
            grid[k][1].reverse()  # points
            pi2 = ''.join(repr(p) for p in grid[k][1])
            c2 = grid[k][0]
        else:
            pi2,c2 = '',[]
        if pi1 != pi2 or len(c1) != len(c2):
            changed = True 
        if debugging and pi1 != pi2:
            print fn.__name__, k, c1, c2, '|', pi1, '|', pi2, '|'
    return changed

def clean(grid):
    to_pop = []
    for k,v in grid.iteritems():
        if type(k) != int:
            continue
        clue,points = v
        empty(clue, points)
        clean_points(clue, points)
        if not (clue and points):
            to_pop.append(k)
    for k in to_pop:
        grid.pop(k)

def empty(clue, points):
    "no clue, all empty"
    if len(clue) != 0:
        return
    for i,p in enumerate(points):
        if p.i == 0:
            points[i].i = -1

def clean_points(clue, points):
    "remove solved empties from edge"
    while points and points[0].i == -1:
        points.pop(0)

def blank(clue, points):
    if len(clue) != 1 or clue[0] != 0:
        return
    for p in points:
        assert p.i != 1
        p.i = -1

def center(clue, points):
    "mark self overlapping midsection"
    l = len(points) - (sum(clue[1:]) + len(clue) - 1)
    pi = [p.i for p in points[:l]]
    c = clue[0]
    if -1 in pi and 1 in pi and pi.index(1) < pi.index(-1):
        l = min(l, pi.index(-1))
    if 1 in pi[:c]:
        l = min(l, pi.index(1) + c)
    assert l>=c
    if l//2 >= c:
        return
    for i in range(l-c, c):
        assert points[i].i != -1
        points[i].i = 1

def edge(clue, points):
    "fill out leading edge, remove clue"
    if not points or points[0].i != 1:
        return
    c = clue[0]
    for p in points[:c]:
        assert p.i != -1
        p.i = 1
    if c < len(points):
        assert points[c].i != 1
        points[c].i = -1
    for i in range(min(c+1, len(points))):
        points.pop(0)
    clue.pop(0)

def edge_dot(clue, points):
    "blank before a dot"
    if clue[0] != 1:
        return
    pi = [p.i for p in points[0:2]]
    if pi != [0,1]:
        return
    points[0].i = -1

def unique(clue, points):
    "add empty space before unique"
    c = clue[0]
    if max(clue) != c:
        return
    if sum(c1==c for c1 in clue) != 1:
        return
    for i in range(len(points) + 1 - c):
        if not all(p.i==1 for p in points[i:i+c]):
            continue
        for j in range(i):
            assert points[j].i != 1
            points[j].i = -1
        break

def cant_fit(clue, points):
    "blank out small holes"
    if points[0].i != 0:
        return
    c = clue[0]
    pl = [p.i for p in points]
    if -1 not in pl[:c]:
        return
    pe = pl.index(-1)
    for i in range(pe):
        assert points[i].i != 1
        points[i].i = -1

def cant_reach(clue, points):
    "blank distant edges"
    # changes the FAR edge
    if len(clue) != 1:
        return
    c = clue[0]
    pi = [p.i for p in points]
    if 1 not in pi:
        return
    for i in range(pi.index(1) + c, len(pi)):
        assert points[i].i != 1
        points[i].i = -1


def bad_guess(grid):
    if finished(grid):
        raise
    ks = [k for k,v in grid.items() if type(k)==tuple and v.i==0]
    if not ks:
        raise
    return min(ks), 1

def main():
    grid = load_grid()
    guess_hist = []
    grid_hist = []
    axioms = [blank, center, edge, unique, cant_fit, cant_reach, edge_dot]
    while not finished(grid):
        changed = False
        try:
            for axiom in axioms:
                changed += map2d(axiom, grid)
        except AssertionError:  # bad guess
            k,v = guess_hist.pop()
            if debugging:
                print 'Rollback', k, v
            grid = grid_hist.pop()
            if v == 1:
                v = -1
                if debugging:
                    print 'Guessing', k, v
                grid[k].i = v
            changed = True
        if debugging:
            show(grid)
            print
        if changed:
            continue
        grid_hist.append(deepcopy(grid))
        k,v = bad_guess(grid)
        guess_hist.append((k,v))
        grid[k].i = v
        if debugging:
            print 'Guessing', k, v
    if debugging:
        ks = [k for k in grid.keys() if type(k)==int]
        ks.sort()
        for k in ks:
            print k, grid[k][0], ''.join(repr(p) for p in grid[k][1])
    show(grid)

if __name__ == '__main__':
    load_file(sys.argv[1])
    main()

