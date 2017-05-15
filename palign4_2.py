#]!/usr/bin/python

from random import randint
from datetime import datetime
import sys
import os
import subprocess
startTime = datetime.now()
#Read FASTA files
#print "Enter FASTA sequence 1:"
#filename1 = raw_input()			#FASTA 1
filename1 = sys.argv[1]
#print "Enter FASTA sequence 2:"
#filename2 = raw_input()			#FASTA 2
filename2 = sys.argv[2]
seq1 = []
seq2 = []
with open( filename1, 'r+') as text1:	#Read files
	lines1 = text1.readlines()	#[1:]
	for line in lines1:
		seq1.append(line)
	text1.close()
with open( filename2, 'r+') as text2:
	lines2 = text2.readlines()	#[1:]
	for line in lines2:
		seq2.append(line)
	text2.close()
#seq1_array = [x[:-1] for x in seq1]	#format array
#seq2_array = [x[:-1] for x in seq2]
seq1_array = seq1
seq2_array = seq2
seq1_arr = "".join(seq1_array)		#join elements of array
seq2_arr = "".join(seq2_array)		#sequence 1 and sequence 2
#Add gaps to sequences
sequence1 = []			#sequence 1
sequence2 = []			#sequence 2
seq1_gaps = []			#sequence 1 gaps
seq2_gaps = []			#sequence 2 gaps
seq1_gaps_2N = []		#2N gaps seq 1
seq2_gaps_2N = []		#2N gaps seq 2
for i in seq1_arr:
	sequence1.append(i)
for i in seq2_arr:
	sequence2.append(i)
length1 = 0				#count length sequence 1
for i in sequence1:		
	length1 = length1 + 1
length2 = 0				#count length sequence 2
for i in sequence2:
	length2 = length2 + 1
if (length1 != length2):
	if (length1 > length2):
		diff = length1 - length2			#append gaps to seq2
		seq1_gaps = sequence1
		for i in range(diff):
			seq2_gaps.append("-")
		for i in sequence2:
			seq2_gaps.append(i)
	else:
		diff = length2 - length1			#append gaps to seq1
		seq2_gaps = sequence2
		for i in range(diff):
			seq1_gaps.append("-")
		for i in sequence1:
			seq1_gaps.append(i)
else:
	diff = 0				#do not append gaps
	seq1_gaps = sequence1
	seq2_gaps = sequence2	
#print "seq1_gaps:"+str(seq1_gaps)
#print "seq2_gaps:"+str(seq2_gaps)
for i in seq1_gaps[3:]:			#add N gaps
	seq1_gaps_2N.append("-")
for i in seq1_gaps:
	seq1_gaps_2N.append(i)
for i in seq2_gaps[3:]:
	seq2_gaps_2N.append("-")
for i in seq2_gaps:
	seq2_gaps_2N.append(i)
#print "seq1_gaps_2N:"+str(seq1_gaps_2N)
#print "seq2_gaps_2N:"+str(seq2_gaps_2N)
#Calculate permutations
length1 = range(len(seq1_gaps_2N))		#calculate length
length2 = range(len(seq2_gaps_2N))
a = 0
for i in length1:
	a = a + 1				#length1
b = 0
for i in length2:
	b = b + 1				#length2
h = 5000000
#for i in length1[1:]:
#	h *= i					#number of permutations length1
e = 5000000
#for i in length2[1:]:
#	e *= i					#number of permutations length2
#Generate permutations
#Seq1
Permutations1_a = [0 for x in range(a)]		#initialize permutations table length list
w, h = a,h					#length, number of permutations matrix
r = a - 1
j = 0
i = 0
random_2D = [[0 for x in range(w)] for y in range(h)]
Permutations1_h = []				#N permutations table
while (j < h):			#a hundred million permutations
	Permutations1_h.append(Permutations1_a)
	j = j + 1
li = []
random_2D = []
j = 0
while (j<h):				#number of permutations
	random = []
	while (len(random)<a):				#permutation generator for length a permutations
		y = randint(0,r)
		random.append(y)				#index array for permutaions
	random_2D.append(random)
	j = j + 1
k = 0
i = 0
permutations1_table = []
while (i<h):
	permutations = []
	j = 0
	l = 0
	while (j<a):
		y = random_2D[k][l]
		l = l + 1
		permutations.append(seq1_gaps_2N[y])		#random not 2D array
		j = j + 1
	permutations1_table.append(permutations)
	k = k + 1
	i = i + 1

#Seq2
Permutations2_a = [0 for x in range(b)]		#initialize permutations table length list

w, h = b,e					#length, number of permutations matrix
r = b - 1
j = 0
i = 0
random_2D = [[0 for x in range(w)] for y in range(h)]
Permutations2_h = []				#N permutations table
while (j < h):			#a hundred million permutations
	Permutations2_h.append(Permutations2_a)
	j = j + 1

li = []
random_2D = []
j = 0
while (j<h):				#number of permutations
	random = []
	while (len(random)<b):				#permutation generator for length a permutations
		y = randint(0,r)
		random.append(y)				#index array for permutaions
	random_2D.append(random)
	j = j + 1
k = 0
i = 0

permutations2_table = []
while (i<h):
	permutations = []
	j = 0
	l = 0
	while (j<b):
		y = random_2D[k][l]
		l = l + 1
		permutations.append(seq2_gaps_2N[y])		#random not 2D array
		j = j + 1
	permutations2_table.append(permutations)
	k = k + 1
	i = i + 1
#print "Permutations1table:"+str(permutations1_table)
#print "Permutations2table:"+str(permutations2_table)
#Remove gaps from permutations and remove unordered permutations
#Seq1
Permutations1_ordered = []				#array for gap permutations with ordered sequence
j = 0
k = 0
while (k<len(permutations1_table)):
	l = 0
	seq = []
	count_len1 = 0
	count_len2 = 0
	count_len3 = 0
	count_len4 = 0
	count_lent = 0
	for i in permutations1_table[k]:
		if (i == "-"):
			next
		else:
			seq.append(i)
	if (len(seq) == len(sequence1)):
		for j,m in map(None,seq , sequence1):
			if (j == m):
				count_len1 = count_len1 + 1			#fasta equals table sequence
			else:
				break
		if (count_len1 == len(sequence1)):
			Permutations1_ordered.append(permutations1_table[k])
		else:
			next
	else:
		next
	k = k + 1	
#print "Permutations1 ordered:"+str(Permutations1_ordered)							#comment
#Seq2
Permutations2_ordered = []				#array for gap permutations with ordered sequence
j = 0
k = 0
while (k<len(permutations2_table)):
	l = 0
	seq = []
	count_len1 = 0
	count_len2 = 0
	count_len3 = 0
	count_len4 = 0
	count_lent = 0
	for i in permutations2_table[k]:
		if (i == "-"):
			next
		else:
			seq.append(i)
	if (len(seq) == len(sequence2)):
		for j,m in map(None,seq , sequence2):
			if (j == m):
				count_len1 = count_len1 + 1			#fasta equals table sequence
			else:
				break
		if (count_len1 == len(sequence2)):
			Permutations2_ordered.append(permutations2_table[k])
		else:
			next
	else:
		next
	k = k + 1	
#print "Permutations2 ordered:"+str(Permutations2_ordered)							#comment
#Score permutations based on BLOSUM 			 
# BLOSUM64 Matrix:
S ={ 
"A": {"A":"4" , "R":"-1" , "N":"-2" , "D":"-2" , "C":"0" , "Q":"-1" , "E":"-1" , "G":"0" , "H":"-2" , "I":"-1" , "L":"-1" , "K":"-1" , "M":"-1" , "F":"-2" , "P":"-1" , "S":"1" , "T":"0","W":"-3" , "Y":"-2" , "V":"0" , "B":"-2" , "Z":"-1" , "X":"0" , "*":"-4"},
"R": {"A":"-1" , "R":"5" , "N":"0" , "D":"-2" , "C":"-3" , "Q":"1" , "E":"0" , "G":"-2" , "H":"0" , "I":"-3" , "L":"-2" , "K":"2" , "M":"-1" , "F":"-3" , "P":"-2" , "S":"-1" , "T":"-1" , "W":"-3" , "Y":"-2" , "V":"-3" , "B":"-1" , "Z":"0" , "X":"-1" , "*":"-4"},
"N": {"A":"-2" , "R":"0" , "N":"6" , "D":"1" , "C":"-3" , "Q":"0" , "E":"0" , "G":"0" , "H":"1" , "I":"-3" , "L":"-3" , "K":"0" , "M":"-2" , "F":"-3" , "P":"-2" , "S":"1" , "T":"0" , "W":"-4" , "Y":"-2" , "V":"-3" , "B":"3" , "Z":"0" , "X":"-1" , "*":"-4"},
"D": {"A":"-2" , "R":"-2" , "N":"1" , "D":"6" , "C":"-3" , "Q":"0" , "E":"2" , "G":"-1"  , "H":"-1" , "I":"-3" , "L":"-4" , "K":"-1" , "M":"-3" , "F":"-3" , "P":"-1" , "S":"0" , "T":"-1" , "W":"-4" , "Y":"-3" , "V":"-3" , "B":"4" , "Z":"1" , "X":"-1" , "*":"-4"},
"C": {"A":"0" , "R":"-3" , "N":"-3" , "D":"-3" , "C":"9" , "Q":"-3" , "E":"-4" , "G":"-3" , "H":"-3" , "I":"-1" , "L":"-1" , "K":"-3" , "M":"-1" , "F":"-2" , "P":"-3" , "S":"-1" , "T":"-1" , "W":"-2" , "Y":"-2" , "V":"-1" , "B":"-3" , "Z":"-3" , "X":"-2" , "*":"-4"},
"Q": {"A":"-1" , "R":"1" , "N":"0" , "D":"0" , "C":"-3" , "Q":"5" , "E":"2" , "G":"-2" , "H":"0" , "I":"-3" , "L":"-2" , "K":"1" , "M":"0" , "F":"-3" , "P":"-1" , "S":"0" ,  "T":"-1" , "W":"-2" , "Y":"-1" , "V":"-2" , "B":"0" , "Z":"3" , "X":"-1" , "*":"-4"},
"E": {"A":"-1" , "R":"0" , "N":"0" , "D":"2" , "C":"-4" , "Q":"2" , "E":"5" , "G":"-2" , "H":"0" , "I":"-3" , "L":"-3" , "K":"1" , "M":"-2" , "F":"-3" , "P":"-1" , "S":"0" , "T":"-1" , "W":"-3" , "Y":"-2" , "V":"-2" , "B":"1" , "Z":"4" , "X":"-1" ,"*":"-4"},
 "G": {"A":"0" , "R":"-2" , "N":"0" , "D":"-1" , "C":"-3" , "Q":"-2" , "E":"-2" , "G":"6" , "H":"-2" , "I":"-4" , "L":"-4" , "K":"-2" , "M":"-3" , "F":"-3" , "P":"-2" , "S":"0" , "T":"-2" , "W":"-2" , "Y":"-3" , "V":"-3" , "B":"-1" , "Z":"-2" , "X":"-1" , "*":"-4"},
"H": {"A":"-2" , "R":"0" , "N":"1" , "D":"-1" , "C":"-3" , "Q":"0" , "E":"0" , "G":"-2" , "H":"8" , "I":"-3" , "L":"-3" , "K":"-1" , "M":"-2" , "F":"-1" , "P":"-2" , "S":"-1" , "T":"-2" , "W":"-2" , "Y":"2" , "V":"-3" , "B":"0" , "Z":"0" , "X":"-1" , "*":"-4"},
"I": {"A":"-1" , "R":"-3" , "N":"-3" , "D":"-3" , "C":"-1" , "Q":"-3" , "E":"-3" , "G":"-4" , "H":"-3" , "I":"4" , "L":"2" , "K":"-3" , "M":"1" , "F":"0" , "P":"-3" , "S":"-2" , "T":"-1" , "W":"-3" , "Y":"-1" , "V":"3" , "B":"-3" , "Z":"-3" , "X":"-1" , "*":"-4"},
"L": {"A":"-1" , "R":"-2" , "N":"-3" , "D":"-4" , "C":"-1" , "Q":"-2" , "E":"-3" , "G":"-4" , "H":"-3" , "I":"2" , "L":"4" , "K":"-2" , "M":"2" , "F":"0" , "P":"-3" , "S":"-2" , "T":"-1" , "W":"-2" , "Y":"-1" , "V":"1" , "B":"-4" , "Z":"-3" , "X":"-1" , "*":"-4"},
"K": {"A":"-1" , "R":"2" ,  "N":"0" , "D":"-1" , "C":"-3" , "Q":"1" , "E":"1" , "G":"-2" , "H":"-1" , "I":"-3" , "L":"-2" , "K":"5" , "M":"-1" , "F":"-3" , "P":"-1" , "S":"0" , "T":"-1" , "W":"-3" , "Y":"-2" , "V":"-2" , "B":"0" , "Z":"1" , "X":"-1" , "*":"-4"},
 "M": {"A":"-1" , "R":"-1" , "N":"-2" , "D":"-3" , "C":"-1" , "Q":"0" , "E":"-2" , "G":"-3" , "H":"-2" , "I":"1" , "L":"2" , "K":"-1" , "M":"5" , "F":"0" , "P":"-2" , "S":"-1" , "T":"-1" , "W":"-1" , "Y":"-1" , "V":"1" , "B":"-3" , "Z":"-1" , "X":"-1" , "*":"-4"},
"F": {"A":"-2" , "R":"-3" , "N":"-3" , "D":"-3" , "C":"-2" , "Q":"-3" , "E":"-3" , "G":"-3" , "H":"-1" , "I":"0" , "L":"0" , "K":"-3" , "M":"0" , "F":"6" , "P":"-4" , "S":"-2" , "T":"-2" , "W":"1" , "Y":"3" , "V":"-1" , "B":"-3" , "Z":"-3" , "X":"-1" , "*":"-4"},
"P": {"A":"-1" , "R":"-2" , "N":"-2" , "D":"-1" , "C":"-3" , "Q":"-1" , "E":"-1" , "G":"-2" , "H":"-2" , "I":"-3" , "L":"-3" , "K":"-1" , "M":"-2" , "F":"-4" , "P":"7" , "S":"-1" , "T":"-1" , "W":"-4" , "Y":"-3" , "V":"-2" , "B":"-2" , "Z":"-1" , "X":"-2" , "*":"-4"},
"S": {"A":"1" , "R":"-1" , "N":"1" , "D":"0" , "C":"-1" , "Q":"0" , "E":"0" , "G":"0" , "H":"-1" , "I":"-2" , "L":"-2" , "K":"0" , "M":"-1" , "F":"-2" , "P":"-1" , "S":"4" , "T":"1" , "W":"-3" , "Y":"-2" , "V":"-2" , "B":"0" , "Z":"0" , "X":"0" , "*":"-4"},
"T": {"A":"0" , "R":"-1" , "N":"0" , "D":"-1" , "C":"-1" , "Q":"-1" , "E":"-1" , "G":"-2" , "H":"-2" , "I":"-1" , "L":"-1" , "K":"-1" , "M":"-1" , "F":"-2" , "P":"-1" , "S":"1" , "T":"5" , "W:":"-2" , "Y":"-2" , "V":"0" , "B":"-1" , "Z":"-1" , "X":"0" , "*":"-4"},
"W": {"A":"-3" , "R":"-3" , "N":"-4" , "D":"-4" , "C":"-2" , "Q":"-2" , "E":"-3" , "G":"-2" , "H":"-2" , "I":"-3" , "L":"-2" , "K":"-3" , "M":"-1" , "F":"1" , "P":"-4" , "S":"-3" , "T":"-2" , "W":"11" , "Y":"2" , "V":"-3" , "B":"-4" , "Z":"-3" , "X":"-2" , "*":"11"},
"Y": {"A":"-2" , "R":"-2" , "N":"-2" , "D":"-3" , "C":"-2" , "Q":"-1" , "E":"-2" , "G":"-3" , "H":"2" , "I":"-1" , "L":"-1" , "K":"-2" , "M":"-1" , "F":"3" , "P":"-3" , "S":"-2" , "T":"-2" , "W":"2" , "Y":"7" , "V":"-1" , "B":"-3" , "Z":"-2" , "X":"-1" , "*":"-4"},
"V": {"A":"0" , "R":"-3" , "N":"-3" , "D":"-3" , "C":"-1" , "Q":"-2" , "E":"-2" , "G":"-3" , "H":"-3" , "I":"3" , "L":"1" , "K":"-2" , "M":"1" , "F":"-1" , "P":"-2" , "S":"-2" , "T":"0" , "W":"-3" , "Y":"-1" , "V":"4" , "B":"-3" , "Z":"-2" , "X":"-1" , "*":"-4"},
"B": {"A":"-2" , "R":"-1" , "N":"3" , "D":"4" , "C":"-3" , "Q":"0" , "E":"1" , "G":"-1" , "H":"0" , "I":"-3" , "L":"-4" , "K":"0" , "M":"-3" , "F":"-3" , "P":"-2" , "S":"0" , "T":"-1" , "W:":"-4" , "Y":"-3" , "V":"-3" , "B":"4" , "Z":"1" , "X":"-1" , "*":"-4"},
"Z": {"A":"-1" , "R":"0" , "N":"0" , "D":"1" , "C":"-3" , "Q":"3" , "E":"4" , "G":"-2" , "H":"0" , "I":"-3" , "L":"-3" , "K":"1" , "M":"-1" , "F":"-3" , "P":"-1" , "S":"0" , "T":"-1" , "W":"-3" , "Y":"-2" , "V":"-2" , "B":"1" , "Z":"4" , "X":"-1" , "*":"-4"},
"X": {"A":"0" , "R":"-1" , "N":"-1" , "D":"-1" , "C":"-2" , "Q":"-1" , "E":"-1" , "G":"-1" , "H":"-1" , "I":"-1" , "L":"-1" , "K":"-1" , "M":"-1" , "F":"-1" , "P":"-2" , "S":"0" , "T":"0" , "W":"-2", "Y":"-1" , "V":"-1" , "B":"-1" , "Z":"-1" , "X":"-1" , "*":"-4"},
"*": {"A":"-3" , "R":"-3" , "N":"-2" , "D":"-3" , "C":"-2" , "Q":"-2" , "E":"-3" , "G":"-2" , "H":"-2" , "I":"-3" , "L":"-2" , "K":"-3" , "M":"-1" , "F":"3" , "P":"-3" , "S":"-2" , "T":"-2" , "W":"11" , "Y":"2" , "V":"-3" , "B":"-4" , "Z":"-3" , "X":"-2" , "*":"11"}
}
#Score alignment
penalty = int(0)
scores_list = []
final_alignment1 = []
final_alignment2 = []
length_perm1 = 0
c = 0
d = 0
maximum = -10
if (length1 != length2):
	for i in Permutations1_ordered:
		for j in Permutations2_ordered:
			a = 0
			b = 0
			alignment_list1 = []
			alignment_list2 = []                                                                 
			alignment_list3 = []
			alignment_list4 = []
			score = 0 
                	for k,l in zip(i, j):			       
                		alignment_list1.append(k)				#Alignment 1
                        	alignment_list2.append(l)				#Alignment 2
                        	if k == "-":
                        		score += penalty
                        	else:
					score = score
				if l == "-":
                                	score += penalty
				else:
					score = score
                        	if (k != "-" and l != "-"):	
                                	temp = score + int(S[k][l])
                                	temp2 = score + int(S[l][k])
                                	if (temp > temp2):
                                		score = score + int(S[k][l])
                                	elif (temp < temp2):
                                		score = score + int(S[l][k])
                                	else:
                                		score = score + int(S[k][l])
				else:
					score = score
                        	a = a + 1
                        	b = b + 1
			scores_list.append(score)		
                	if (score >= maximum):					#scores toward end are favored
                        	final_alignment1 = alignment_list1
				final_alignment2 = alignment_list2
				#for z in alignment_list1:
                                #	final_alignment1.append(i)
                                #for z in alignment_list2:
                                #        final_alignment2.append(i)
			else:
				next
			if (score >= maximum):
				maximum = score
			else:
				next										#
elif (length1 == length2):
	for i in Permutations1_ordered:
		for j in Permutations2_ordered:
			a = 0
			b = 0
			alignment_list1 = []
			alignment_list2 = []
			score = 0
			for k, l in zip(i, j):
				alignment_list1.append(k)				#Alignment 1            	
        			alignment_list2.append(l)				#Alignment 2
        			if k == "-":
        				score += penalty
        			else:
        				score = score
        			if l == "-":
                			score += penalty
        			else:
        				score = score
        			if (k != "-" and l != "-"):	
                			temp = int(S[k][l])
                			temp2 = int(S[l][k])
                			if (temp > temp2):
                				score = score + int(S[k][l])
                			elif (temp < temp2):
                				score = score + int(S[l][k])
                			else:
                				score = score + int(S[k][l])
        			else:
        				score = score
        			a = a + 1
        			b = b + 1
        		scores_list.append(score)		
        		if (score > maximum):					#scores toward end are favored
        			final_alignment1 = alignment_list1
        			final_alignment2 = alignment_list2
        	#for z in alignment_list1:
                #	final_alignment1.append(i)
                #for z in alignment_list2:
                #        final_alignment2.append(i)
        		if (score >= maximum):
        			maximum = score								#

else:
	next

if (os.path.isfile("alignment3.txt")):
	variable = "rm -f alignment3.txt"
	output = subprocess.check_output(["bash", "-c", variable])

with open("alignment3.txt", "a+") as text:
	for i in final_alignment1:
		text.write(i)
	text.write("\n")
	for i in final_alignment2:
		text.write(i)
	text.write("\n")
	text.close()

#print "Final alignment1:"+str(final_alignment1)
#print "Final alignment2:"+str(final_alignment2)
print max(scores_list)
#print datetime.now() - startTime
#print "\a"



