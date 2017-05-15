#!/usr/bin/python
#Program takes a FASTA sequence and splits it into bins of 5
import math
import subprocess
import os
#Read FASTA files
print "Enter FASTA sequence1:"
filename1 = raw_input()
print "Enter FASTA sequence2:"
filename2 = raw_input()
seq1 = []
seq2 = []
with open(filename1, 'r+') as text1:
	lines1 = text1.readlines()[1:]
	for line in lines1:
		seq1.append(line)
	text1.close()
with open(filename2, 'r+') as text2:
	lines2 = text2.readlines()[1:]
	for line in lines2:
		seq2.append(line)
	text2.close()
seq1_array = [x[:-1] for x in seq1]
seq2_array = [x[:-1] for x in seq2]

seq1_arr = "".join(seq1_array)
seq2_arr = "".join(seq2_array)
sequence1 = []
sequence2 = []
for i in seq1_arr:
	sequence1.append(i)
for i in seq2_arr:
	sequence2.append(i)
bins1 = float(len(sequence1)) / 5
bins2 = float(len(sequence2)) / 5
a = math.ceil(bins1)
b = math.ceil(bins2)
k = 0
while (k<int(a)):
	j = 0
	while (j<5):
		with open("seq1"+str(k), 'a+') as text:
			if (sequence1):
				text.write(sequence1[0])
				sequence1.pop(0)
				text.close()
			else:
				text.close()
		j = j + 1
	k = k + 1
k = 0
while (k<int(b)):
	j = 0
	while (j<5):
		with open("seq2"+str(k), 'a+') as text:
			if (sequence2):
				text.write(sequence2[0])
				sequence2.pop(0)
				text.close()
			else:
				text.close()
		j = j + 1
	k = k + 1
#submit jobs





















