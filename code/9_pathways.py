# -*- coding: utf-8 -*-
"""
Created on Sun May 23 18:34:38 2021

@author: EliteBook
"""

minpathd = open('bin20-central.ec.minpath.details')
mat = open('PROKKA.20.ec')
counts = open('20_139.counts')

enz_ids = []
for line in minpathd:
    if line.startswith(' '):
        id = line.strip().split(' ')[0]
        if id not in enz_ids:
            enz_ids.append(id)

feat_ids = []
for line in mat:
    line = line.strip().split('\t')
    if line[1] in enz_ids:
        feat_ids.append(line[0])

for line in counts:
    line = line.strip().split('\t')
    if line[0] in feat_ids and line[1] != '0':
        print(line)
