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

"""
if (os.path.isfile("seq10")):
	output1 = subprocess.check_output(["python", "palign4.py", "seq10", "seq20"])
	print output1
	output2 = subprocess.check_output(["python", "palign4_1.py", "seq10", "seq20"])
	print output2
	output3 = subprocess.check_output(["python", "palign4_2.py", "seq10", "seq20"])
	print output3
	if (int(output1) >= int(output2) and int(output1) >= int(output3)):
		variable = subprocess.check_output(["bash", "-c", "cat alignment1.txt >> Palign_output"])
	if (int(output2) > int(output1) and int(output2) >= int(output3)):
		variable = subprocess.check_output(["bash", "-c", "cat alignment2.txt >> Palign_output"])
	if (int(output3) >= int(output1) and int(output3) > int(output2)):
		variable = subprocess.check_output(["bash", "-c", "cat alignment3.txt >> Palign_output"])
	print "Aligned 1"
if (os.path.isfile("seq11")):
	output1 = subprocess.Popen(["palign4.py", "seq11", "seq21"], shell = True)
	print output1
	output2 = subprocess.check_output(["python", "palign4_1.py", "seq11", "seq21"])
        print output2
	output3 = subprocess.check_output(["python", "palign4_2.py", "seq11", "seq21"])
        print output3
	if (int(output1) >= int(output2) and int(output1) >= int(output3)):
        	variable = subprocess.check_output(["bash", "-c", "cat alignment1.txt >> Palign_output"])
        if (int(output2) > int(output1) and int(output2) >= int(output3)):
        	variable = subprocess.check_output(["bash", "-c", "cat alignment2.txt >> Palign_output"])
        if (int(output3) >= int(output1) and int(output3) > int(output2)):
        	variable = subprocess.check_output(["bash", "-c", "cat alignment3.txt >> Palign_output"])
	print "Aligned 2"
if (os.path.isfile("seq12")):
	output = subprocess.check_output(["python","palign4.py", "seq12", "seq22"])
	print "Aligned 3"
if (os.path.isfile("seq13")):
	output = subprocess.check_output(["python","palign4.py", "seq13", "seq23"])
	print "Aligned 4"
if (os.path.isfile("seq14")):
	output = subprocess.check_output(["python", "palign4.py", "seq14", "seq24"])
	print "Aligned 5"
if (os.path.isfile("seq15")):
	output = subprocess.check_output(["python", "palign4.py", "seq15", "seq25"])
	print "Aligned 6"
if (os.path.isfile("seq16")):
	output = subprocess.check_output(["python", "palign4.py", "seq16", "seq26"])
	print "Aligned 7"
if (os.path.isfile("seq17")):
	output = subprocess.check_output(["python","palign4.py", "seq17", "seq27"])
	print "Aligned 8"
if (os.path.isfile("seq18")):
	output = subprocess.check_output(["python","palign4.py", "seq18", "seq28"])
	print "Aligned 9"
if (os.path.isfile("seq19")):
	output = subprocess.check_output(["python","palign4.py", "seq19", "seq29"])
	print "Aligned 10"
if (os.path.isfile("seq110")):
	output = subprocess.check_output(["python", "palign4.py", "seq110", "seq10"])
	print "Aligned 11"
if (os.path.isfile("seq111")):
	output = subprocess.check_output(["python", "palign4.py", "seq111", "seq11"])
	print "Aligned 12"
if (os.path.isfile("seq112")):
	output = subprocess.check_output(["python", "palign4.py", "seq112", "seq212"])
	print "Aligned 13"
if (os.path.isfile("seq113")):
	output = subprocess.check_output(["python","palign4.py", "seq113", "seq213"])
	print "Aligned 14"
if (os.path.isfile("seq114")):
	output = subprocess.check_output(["python","palign4.py", "seq114", "seq214"])
	print "Aligned 15"
if (os.path.isfile("seq115")):
	output = subprocess.check_output(["python","palign4.py", "seq115", "seq215"])
	print "Aligned 16"
if (os.path.isfile("seq116")):
	output = subprocess.check_output(["python", "palign4.py", "seq116", "seq216"])
	print "Aligned 17"
if (os.path.isfile("seq117")):
	output = subprocess.check_output(["python", "palign4.py", "seq117", "seq217"])
	print "Aligned 18"
if (os.path.isfile("seq118")):
	output = subprocess.check_output(["python", "palign4.py", "seq118", "seq218"])
	print "Aligned 19"
if (os.path.isfile("seq119")):
	output = subprocess.check_output(["python","palign4.py", "seq119", "seq219"])
	print "Aligned 20"
if (os.path.isfile("seq120")):
	output = subprocess.check_output(["python","palign4.py", "seq120", "seq220"])
	print "Aligned 21"
if (os.path.isfile("seq121")):
	output = subprocess.check_output(["python","palign4.py", "seq121", "seq221"])
	print "Aligned 22"
if (os.path.isfile("seq122")):
	output = subprocess.check_output(["python", "palign4.py", "seq122", "seq222"])
	print "Aligned 23"
if (os.path.isfile("seq123")):
	output = subprocess.check_output(["python", "palign4.py", "seq123", "seq223"])
	print "Aligned 24"
if (os.path.isfile("seq124")):
	output = subprocess.check_output(["python", "palign4.py", "seq124", "seq224"])
	print "Aligned 25"
if (os.path.isfile("seq125")):
	output = subprocess.check_output(["python","palign4.py", "seq125", "seq225"])
	print "Aligned 26"
if (os.path.isfile("seq126")):
	output = subprocess.check_output(["python","palign4.py", "seq126", "seq226"])
	print "Aligned 27"
if (os.path.isfile("seq127")):
	output = subprocess.check_output(["python","palign4.py", "seq127", "seq227"])
	print "Aligned 28"
if (os.path.isfile("seq128")):
	output = subprocess.check_output(["python", "palign4.py", "seq128", "seq228"])
	print "Aligned 29"
if (os.path.isfile("seq129")):
	output = subprocess.check_output(["python", "palign4.py", "seq129", "seq229"])
	print "Aligned 30"
if (os.path.isfile("seq130")):
	output = subprocess.check_output(["python", "palign4.py", "seq130", "seq230"])
	print "Aligned 31"
if (os.path.isfile("seq131")):
	output = subprocess.check_output(["python","palign4.py", "seq131", "seq231"])
	print "Aligned 32"
if (os.path.isfile("seq132")):
	output = subprocess.check_output(["python","palign4.py", "seq132", "seq232"])
	print "Aligned 33"
if (os.path.isfile("seq133")):
	output = subprocess.check_output(["python","palign4.py", "seq133", "seq233"])
	print "Aligned 34"
if (os.path.isfile("seq134")):
	output = subprocess.check_output(["python", "palign4.py", "seq134", "seq234"])
	print "Aligned 35"
if (os.path.isfile("seq135")):
	output = subprocess.check_output(["python", "palign4.py", "seq135", "seq235"])
	print "Aligned 36"
if (os.path.isfile("seq136")):
	output = subprocess.check_output(["python", "palign4.py", "seq136", "seq236"])
	print "Aligned 37"
if (os.path.isfile("seq137")):
	output = subprocess.check_output(["python","palign4.py", "seq137", "seq237"])
	print "Aligned 38"
if (os.path.isfile("seq138")):
	output = subprocess.check_output(["python","palign4.py", "seq138", "seq238"])
	print "Aligned 39"
if (os.path.isfile("seq139")):
	output = subprocess.check_output(["python","palign4.py", "seq139", "seq239"])
	print "Aligned 40"
if (os.path.isfile("seq140")):
	output = subprocess.check_output(["python", "palign4.py", "seq140", "seq240"])
	print "Aligned 41"
if (os.path.isfile("seq141")):
	output = subprocess.check_output(["python", "palign4.py", "seq141", "seq241"])
	print "Aligned 42"
if (os.path.isfile("seq142")):
	output = subprocess.check_output(["python", "palign4.py", "seq142", "seq242"])
	print "Aligned 43"
if (os.path.isfile("seq143")):
	output = subprocess.check_output(["python","palign4.py", "seq143", "seq243"])
	print "Aligned 44"
if (os.path.isfile("seq144")):
	output = subprocess.check_output(["python","palign4.py", "seq144", "seq244"])
	print "Aligned 45"
if (os.path.isfile("seq145")):
	output = subprocess.check_output(["python","palign4.py", "seq145", "seq245"])
	print "Aligned 46"
if (os.path.isfile("seq146")):
	output = subprocess.check_output(["python", "palign4.py", "seq146", "seq246"])
	print "Aligned 47"
if (os.path.isfile("seq147")):
	output = subprocess.check_output(["python", "palign4.py", "seq147", "seq247"])
	print "Aligned 48"
if (os.path.isfile("seq148")):
	output = subprocess.check_output(["python", "palign4.py", "seq148", "seq248"])
	print "Aligned 49"
if (os.path.isfile("seq149")):
	output = subprocess.check_output(["python","palign4.py", "seq149", "seq249"])
	print "Aligned 50"
if (os.path.isfile("seq150")):
	output = subprocess.check_output(["python","palign4.py", "seq150", "seq250"])
	print "Aligned 51"
if (os.path.isfile("seq151")):
	output = subprocess.check_output(["python","palign4.py", "seq151", "seq251"])
	print "Aligned 52"
if (os.path.isfile("seq152")):
	output = subprocess.check_output(["python", "palign4.py", "seq152", "seq252"])
	print "Aligned 53"
if (os.path.isfile("seq153")):
	output = subprocess.check_output(["python", "palign4.py", "seq153", "seq253"])
	print "Aligned 54"
if (os.path.isfile("seq154")):
	output = subprocess.check_output(["python", "palign4.py", "seq154", "seq254"])
	print "Aligned 55"
if (os.path.isfile("seq155")):
	output = subprocess.check_output(["python","palign4.py", "seq155", "seq255"])
	print "Aligned 56"
if (os.path.isfile("seq156")):
	output = subprocess.check_output(["python","palign4.py", "seq156", "seq256"])
	print "Aligned 57"
if (os.path.isfile("seq157")):
	output = subprocess.check_output(["python","palign4.py", "seq157", "seq257"])
	print "Aligned 58"
if (os.path.isfile("seq158")):
	output = subprocess.check_output(["python", "palign4.py", "seq158", "seq258"])
	print "Aligned 59"
if (os.path.isfile("seq159")):
	output = subprocess.check_output(["python", "palign4.py", "seq159", "seq259"])
	print "Aligned 60"
if (os.path.isfile("seq160")):
	output = subprocess.check_output(["python", "palign4.py", "seq160", "seq260"])
	print "Aligned 61"
if (os.path.isfile("seq161")):
	output = subprocess.check_output(["python","palign4.py", "seq161", "seq261"])
	print "Aligned 62"
if (os.path.isfile("seq162")):
	output = subprocess.check_output(["python","palign4.py", "seq162", "seq262"])
	print "Aligned 63"
if (os.path.isfile("seq163")):
	output = subprocess.check_output(["python","palign4.py", "seq163", "seq263"])
	print "Aligned 64"
if (os.path.isfile("seq164")):
	output = subprocess.check_output(["python", "palign4.py", "seq164", "seq264"])
	print "Aligned 65"
if (os.path.isfile("seq165")):
	output = subprocess.check_output(["python", "palign4.py", "seq165", "seq265"])
	print "Aligned 66"
if (os.path.isfile("seq166")):
	output = subprocess.check_output(["python", "palign4.py", "seq166", "seq266"])
	print "Aligned 67"
if (os.path.isfile("seq167")):
	output = subprocess.check_output(["python","palign4.py", "seq167", "seq267"])
	print "Aligned 68"
if (os.path.isfile("seq168")):
	output = subprocess.check_output(["python","palign4.py", "seq168", "seq268"])
	print "Aligned 69"
if (os.path.isfile("seq169")):
	output = subprocess.check_output(["python","palign4.py", "seq169", "seq269"])
	print "Aligned 70"
if (os.path.isfile("seq170")):
	output = subprocess.check_output(["python", "palign4.py", "seq170", "seq270"])
	print "Aligned 71"
if (os.path.isfile("seq171")):
	output = subprocess.check_output(["python", "palign4.py", "seq171", "seq271"])
	print "Aligned 72"
if (os.path.isfile("seq172")):
	output = subprocess.check_output(["python","palign4.py", "seq172", "seq272"])
	print "Aligned 73"
if (os.path.isfile("seq173")):
	output = subprocess.check_output(["python","palign4.py", "seq173", "seq273"])
	print "Aligned 74"
if (os.path.isfile("seq174")):
	output = subprocess.check_output(["python","palign4.py", "seq174", "seq274"])
	print "Aligned 75"
if (os.path.isfile("seq175")):
	output = subprocess.check_output(["python", "palign4.py", "seq175", "seq275"])
	print "Aligned 76"
if (os.path.isfile("seq176")):
	output = subprocess.check_output(["python", "palign4.py", "seq176", "seq276"])
	print "Aligned 77"
if (os.path.isfile("seq177")):
	output = subprocess.check_output(["python", "palign4.py", "seq177", "seq277"])
	print "Aligned 78"
if (os.path.isfile("seq178")):
	output = subprocess.check_output(["python","palign4.py", "seq178", "seq278"])
	print "Aligned 79"
if (os.path.isfile("seq179")):
	output = subprocess.check_output(["python","palign4.py", "seq179", "seq279"])
	print "Aligned 80"
if (os.path.isfile("seq180")):
	output = subprocess.check_output(["python","palign4.py", "seq180", "seq280"])
	print "Aligned 81"
if (os.path.isfile("seq181")):
	output = subprocess.check_output(["python", "palign4.py", "seq181", "seq281"])
	print "Aligned 82"
if (os.path.isfile("seq182")):
	output = subprocess.check_output(["python", "palign4.py", "seq182", "seq282"])
	print "Aligned 83"
if (os.path.isfile("seq183")):
	output = subprocess.check_output(["python", "palign4.py", "seq183", "seq283"])
	print "Aligned 84"
if (os.path.isfile("seq184")):
	output = subprocess.check_output(["python","palign4.py", "seq184", "seq284"])
	print "Aligned 85"
if (os.path.isfile("seq185")):
	output = subprocess.check_output(["python","palign4.py", "seq185", "seq285"])
	print "Aligned 86"
if (os.path.isfile("seq186")):
	output = subprocess.check_output(["python","palign4.py", "seq186", "seq286"])
	print "Aligned 87"
if (os.path.isfile("seq187")):
	output = subprocess.check_output(["python", "palign4.py", "seq187", "seq287"])
	print "Aligned 88"
if (os.path.isfile("seq188")):
	output = subprocess.check_output(["python", "palign4.py", "seq188", "seq288"])
	print "Aligned 89"
if (os.path.isfile("seq189")):
	output = subprocess.check_output(["python", "palign4.py", "seq189", "seq289"])
	print "Aligned 90"
if (os.path.isfile("seq190")):
	output = subprocess.check_output(["python","palign4.py", "seq190", "seq290"])
	print "Aligned 91"
if (os.path.isfile("seq191")):
	output = subprocess.check_output(["python","palign4.py", "seq191", "seq291"])
	print "Aligned 92"
if (os.path.isfile("seq192")):
	output = subprocess.check_output(["python","palign4.py", "seq192", "seq292"])
	print "Aligned 93"
if (os.path.isfile("seq193")):
	output = subprocess.check_output(["python", "palign4.py", "seq193", "seq293"])
	print "Aligned 94"
if (os.path.isfile("seq194")):
	output = subprocess.check_output(["python", "palign4.py", "seq194", "seq294"])
	print "Aligned 95"
if (os.path.isfile("seq195")):
	output = subprocess.check_output(["python", "palign4.py", "seq195", "seq295"])
	print "Aligned 96"
if (os.path.isfile("seq196")):
	output = subprocess.check_output(["python","palign4.py", "seq196", "seq296"])
	print "Aligned 97"
if (os.path.isfile("seq197")):
	output = subprocess.check_output(["python","palign4.py", "seq197", "seq297"])
	print "Aligned 98"
if (os.path.isfile("seq198")):
	output = subprocess.check_output(["python","palign4.py", "seq198", "seq298"])
	print "Aligned 99"
if (os.path.isfile("seq199")):
	output = subprocess.check_output(["python", "palign4.py", "seq199", "seq299"])
	print "Aligned 100"
if (os.path.isfile("seq1100")):
	output = subprocess.check_output(["python", "palign4.py", "seq1100", "seq2100"])
	print "Aligned 101"
if (os.path.isfile("seq1101")):
	output = subprocess.check_output(["python", "palign4.py", "seq1101", "seq2101"])
	print "Aligned 102"
if (os.path.isfile("seq1102")):
	output = subprocess.check_output(["python","palign4.py", "seq1102", "seq2102"])
	print "Aligned 103"
if (os.path.isfile("seq1103")):
	output = subprocess.check_output(["python","palign4.py", "seq1103", "seq2103"])
	print "Aligned 104"
if (os.path.isfile("seq1104")):
	output = subprocess.check_output(["python","palign4.py", "seq1104", "seq2104"])
	print "Aligned 105"
if (os.path.isfile("seq1105")):
	output = subprocess.check_output(["python", "palign4.py", "seq1105", "seq2105"])
	print "Aligned 106"
if (os.path.isfile("seq1106")):
	output = subprocess.check_output(["python", "palign4.py", "seq1106", "seq2106"])
	print "Aligned 107"
if (os.path.isfile("seq1107")):
	output = subprocess.check_output(["python", "palign4.py", "seq1107", "seq2107"])
	print "Aligned 108"
if (os.path.isfile("seq1108")):
	output = subprocess.check_output(["python","palign4.py", "seq1108", "seq2108"])
	print "Aligned 109"
if (os.path.isfile("seq1109")):
	output = subprocess.check_output(["python","palign4.py", "seq1109", "seq2109"])
	print "Aligned 110"
if (os.path.isfile("seq1110")):
	output = subprocess.check_output(["python","palign4.py", "seq1110", "seq2110"])
	print "Aligned 111"
if (os.path.isfile("seq1111")):
	output = subprocess.check_output(["python", "palign4.py", "seq1111", "seq2111"])
	print "Aligned 112"
if (os.path.isfile("seq1112")):
	output = subprocess.check_output(["python", "palign4.py", "seq1112", "seq2112"])
	print "Aligned 113"
if (os.path.isfile("seq1113")):
	output = subprocess.check_output(["python", "palign4.py", "seq1113", "seq2113"])
	print "Aligned 114"
if (os.path.isfile("seq1114")):
	output = subprocess.check_output(["python","palign4.py", "seq1114", "seq2114"])
	print "Aligned 115"
if (os.path.isfile("seq1115")):
	output = subprocess.check_output(["python","palign4.py", "seq1115", "seq2115"])
	print "Aligned 116"
if (os.path.isfile("seq1116")):
	output = subprocess.check_output(["python","palign4.py", "seq1116", "seq2116"])
	print "Aligned 117"
if (os.path.isfile("seq1117")):
	output = subprocess.check_output(["python", "palign4.py", "seq1117", "seq2117"])
	print "Aligned 118"
if (os.path.isfile("seq1118")):
	output = subprocess.check_output(["python", "palign4.py", "seq1118", "seq2118"])
	print "Aligned 119"
if (os.path.isfile("seq119")):
	output = subprocess.check_output(["python", "palign4.py", "seq1119", "seq2119"])
	print "Aligned 120"
if (os.path.isfile("seq1120")):
	output = subprocess.check_output(["python","palign4.py", "seq1120", "seq2120"])
	print "Aligned 121"
if (os.path.isfile("seq1121")):
	output = subprocess.check_output(["python","palign4.py", "seq1121", "seq2121"])
	print "Aligned 122"
if (os.path.isfile("seq1122")):
	output = subprocess.check_output(["python","palign4.py", "seq1122", "seq2122"])
	print "Aligned 123"
if (os.path.isfile("seq1123")):
	output = subprocess.check_output(["python", "palign4.py", "seq1123", "seq2123"])
	print "Aligned 124"
if (os.path.isfile("seq1124")):
	output = subprocess.check_output(["python", "palign4.py", "seq1124", "seq2124"])
	print "Aligned 125"
if (os.path.isfile("seq1125")):
	output = subprocess.check_output(["python", "palign4.py", "seq1125", "seq2125"])
	print "Aligned 126"
if (os.path.isfile("seq1126")):
	output = subprocess.check_output(["python","palign4.py", "seq1126", "seq2126"])
	print "Aligned 127"
if (os.path.isfile("seq1127")):
	output = subprocess.check_output(["python","palign4.py", "seq1127", "seq2127"])
	print "Aligned 128"
if (os.path.isfile("seq1128")):
	output = subprocess.check_output(["python","palign4.py", "seq1128", "seq2128"])
	print "Aligned 129"
if (os.path.isfile("seq1129")):
	output = subprocess.check_output(["python", "palign4.py", "seq1129", "seq2129"])
	print "Aligned 130"
if (os.path.isfile("seq1130")):
	output = subprocess.check_output(["python", "palign4.py", "seq1130", "seq2130"])
	print "Aligned 131"
if (os.path.isfile("seq1131")):
	output = subprocess.check_output(["python", "palign4.py", "seq1131", "seq2131"])
	print "Aligned 132"
if (os.path.isfile("seq1132")):
	output = subprocess.check_output(["python","palign4.py", "seq1132", "seq2132"])
	print "Aligned 133"
if (os.path.isfile("seq1133")):
	output = subprocess.check_output(["python","palign4.py", "seq1133", "seq2133"])
	print "Aligned 134"
if (os.path.isfile("seq1134")):
	output = subprocess.check_output(["python","palign4.py", "seq1134", "seq2134"])
	print "Aligned 135"
if (os.path.isfile("seq1135")):
	output = subprocess.check_output(["python", "palign4.py", "seq1135", "seq2135"])
	print "Aligned 136"
if (os.path.isfile("seq1136")):
	output = subprocess.check_output(["python", "palign4.py", "seq1136", "seq2136"])
	print "Aligned 137"
if (os.path.isfile("seq1137")):
	output = subprocess.check_output(["python", "palign4.py", "seq1137", "seq2137"])
	print "Aligned 138"
if (os.path.isfile("seq1138")):
	output = subprocess.check_output(["python","palign4.py", "seq1138", "seq2138"])
	print "Aligned 139"
if (os.path.isfile("seq1139")):
	output = subprocess.check_output(["python","palign4.py", "seq1139", "seq2139"])
	print "Aligned 140"
if (os.path.isfile("seq1140")):
	output = subprocess.check_output(["python","palign4.py", "seq1140", "seq2140"])
	print "Aligned 141"
if (os.path.isfile("seq1141")):
	output = subprocess.check_output(["python", "palign4.py", "seq1141", "seq2141"])
	print "Aligned 142"
if (os.path.isfile("seq1142")):
	output = subprocess.check_output(["python", "palign4.py", "seq1142", "seq2142"])
	print "Aligned 143"
if (os.path.isfile("seq1143")):
	output = subprocess.check_output(["python", "palign4.py", "seq1143", "seq2143"])
	print "Aligned 144"
if (os.path.isfile("seq1144")):
	output = subprocess.check_output(["python","palign4.py", "seq1144", "seq2144"])
	print "Aligned 145"
if (os.path.isfile("seq1145")):
	output = subprocess.check_output(["python","palign4.py", "seq1145", "seq2145"])
	print "Aligned 146"
if (os.path.isfile("seq1146")):
	output = subprocess.check_output(["python","palign4.py", "seq1146", "seq2146"])
	print "Aligned 147"
if (os.path.isfile("seq1147")):
	output = subprocess.check_output(["python", "palign4.py", "seq1147", "seq2147"])
	print "Aligned 148"
if (os.path.isfile("seq1148")):
	output = subprocess.check_output(["python", "palign4.py", "seq1148", "seq2148"])
	print "Aligned 149"
if (os.path.isfile("seq149")):
	output = subprocess.check_output(["python", "palign4.py", "seq1149", "seq2149"])
	print "Aligned 150"
if (os.path.isfile("seq150")):
	output = subprocess.check_output(["python","palign4.py", "seq1150", "seq2150"])
	print "Aligned 151"
if (os.path.isfile("seq151")):
	output = subprocess.check_output(["python","palign4.py", "seq1151", "seq2151"])
	print "Aligned 152"
if (os.path.isfile("seq152")):
	output = subprocess.check_output(["python","palign4.py", "seq1152", "seq2152"])
	print "Aligned 153"
if (os.path.isfile("seq153")):
	output = subprocess.check_output(["python", "palign4.py", "seq1153", "seq2153"])
	print "Aligned 154"
if (os.path.isfile("seq154")):
	output = subprocess.check_output(["python", "palign4.py", "seq1154", "seq2154"])
	print "Aligned 155"
if (os.path.isfile("seq1155")):
	output = subprocess.check_output(["python", "palign4.py", "seq1155", "seq2155"])
	print "Aligned 156"
if (os.path.isfile("seq1156")):
	output = subprocess.check_output(["python","palign4.py", "seq1156", "seq2156"])
	print "Aligned 157"
if (os.path.isfile("seq1157")):
	output = subprocess.check_output(["python","palign4.py", "seq1157", "seq2157"])
	print "Aligned 158"
if (os.path.isfile("seq1158")):
	output = subprocess.check_output(["python","palign4.py", "seq1158", "seq2158"])
	print "Aligned 159"
if (os.path.isfile("seq1159")):
	output = subprocess.check_output(["python", "palign4.py", "seq1159", "seq2159"])
	print "Aligned 160"
if (os.path.isfile("seq1160")):
	output = subprocess.check_output(["python", "palign4.py", "seq1160", "seq2160"])
	print "Aligned 161"
if (os.path.isfile("seq1161")):
	output = subprocess.check_output(["python", "palign4.py", "seq1161", "seq2161"])
	print "Aligned 162"
if (os.path.isfile("seq1162")):
	output = subprocess.check_output(["python","palign4.py", "seq1162", "seq2162"])
	print "Aligned 163"
if (os.path.isfile("seq1163")):
	output = subprocess.check_output(["python","palign4.py", "seq1163", "seq2163"])
	print "Aligned 164"
if (os.path.isfile("seq1164")):
	output = subprocess.check_output(["python","palign4.py", "seq1164", "seq2164"])
	print "Aligned 165"
if (os.path.isfile("seq1165")):
	output = subprocess.check_output(["python", "palign4.py", "seq1165", "seq2165"])
	print "Aligned 166"
if (os.path.isfile("seq1166")):
	output = subprocess.check_output(["python", "palign4.py", "seq1166", "seq2166"])
	print "Aligned 167"
if (os.path.isfile("seq1167")):
	output = subprocess.check_output(["python", "palign4.py", "seq1167", "seq2167"])
	print "Aligned 168"
if (os.path.isfile("seq1168")):
	output = subprocess.check_output(["python","palign4.py", "seq1168", "seq2168"])
	print "Aligned 169"
if (os.path.isfile("seq1169")):
	output = subprocess.check_output(["python","palign4.py", "seq1169", "seq2169"])
	print "Aligned 170"
if (os.path.isfile("seq1170")):
	output = subprocess.check_output(["python","palign4.py", "seq1170", "seq2170"])
	print "Aligned 171"
if (os.path.isfile("seq1171")):
	output = subprocess.check_output(["python", "palign4.py", "seq1171", "seq2171"])
	print "Aligned 172"
if (os.path.isfile("seq1172")):
	output = subprocess.check_output(["python", "palign4.py", "seq1172", "seq2172"])
	print "Aligned 173"
if (os.path.isfile("seq1173")):
	output = subprocess.check_output(["python", "palign4.py", "seq173", "seq2173"])
	print "Aligned 174"
if (os.path.isfile("seq1174")):
	output = subprocess.check_output(["python","palign4.py", "seq1174", "seq2174"])
	print "Aligned 175"
if (os.path.isfile("seq1175")):
	output = subprocess.check_output(["python","palign4.py", "seq1175", "seq2175"])
	print "Aligned 176"
if (os.path.isfile("seq1176")):
	output = subprocess.check_output(["python","palign4.py", "seq1176", "seq2176"])
	print "Aligned 177"
if (os.path.isfile("seq1177")):
	output = subprocess.check_output(["python", "palign4.py", "seq1177", "seq2177"])
	print "Aligned 178"
if (os.path.isfile("seq1178")):
	output = subprocess.check_output(["python", "palign4.py", "seq1178", "seq2178"])
	print "Aligned 179"
if (os.path.isfile("seq1179")):
	output = subprocess.check_output(["python", "palign4.py", "seq1179", "seq2179"])
	print "Aligned 180"
if (os.path.isfile("seq1180")):
	output = subprocess.check_output(["python","palign4.py", "seq1180", "seq2180"])
	print "Aligned 181"
if (os.path.isfile("seq1181")):
	output = subprocess.check_output(["python","palign4.py", "seq1181", "seq2181"])
	print "Aligned 182"
if (os.path.isfile("seq1182")):
	output = subprocess.check_output(["python","palign4.py", "seq1182", "seq2182"])
	print "Aligned 183"
if (os.path.isfile("seq1183")):
	output = subprocess.check_output(["python", "palign4.py", "seq1183", "seq2183"])
	print "Aligned 184"
if (os.path.isfile("seq1184")):
	output = subprocess.check_output(["python", "palign4.py", "seq1184", "seq2184"])
	print "Aligned 185"
if (os.path.isfile("seq1185")):
	output = subprocess.check_output(["python", "palign4.py", "seq1185", "seq2185"])
	print "Aligned 186"
if (os.path.isfile("seq1186")):
	output = subprocess.check_output(["python","palign4.py", "seq1186", "seq2186"])
	print "Aligned 187"
if (os.path.isfile("seq1187")):
	output = subprocess.check_output(["python","palign4.py", "seq1187", "seq2187"])
	print "Aligned 188"
if (os.path.isfile("seq1188")):
	output = subprocess.check_output(["python","palign4.py", "seq1188", "seq2188"])
	print "Aligned 189"
if (os.path.isfile("seq1189")):
	output = subprocess.check_output(["python", "palign4.py", "seq1189", "seq2189"])
	print "Aligned 190"
if (os.path.isfile("seq1190")):
	output = subprocess.check_output(["python", "palign4.py", "seq1190", "seq2190"])
	print "Aligned 191"
if (os.path.isfile("seq1191")):
	output = subprocess.check_output(["python", "palign4.py", "seq1191", "seq2191"])
	print "Aligned 192"
if (os.path.isfile("seq1192")):
	output = subprocess.check_output(["python","palign4.py", "seq1192", "seq2192"])
	print "Aligned 193"
if (os.path.isfile("seq1193")):
	output = subprocess.check_output(["python","palign4.py", "seq1193", "seq2193"])
	print "Aligned 194"
if (os.path.isfile("seq1194")):
	output = subprocess.check_output(["python","palign4.py", "seq1194", "seq2194"])
	print "Aligned 195"
if (os.path.isfile("seq1195")):
	output = subprocess.check_output(["python", "palign4.py", "seq1195", "seq2195"])
	print "Aligned 196"
if (os.path.isfile("seq1196")):
	output = subprocess.check_output(["python", "palign4.py", "seq1196", "seq2196"])
	print "Aligned 197"
if (os.path.isfile("seq1197")):
	output = subprocess.check_output(["python", "palign4.py", "seq1197", "seq2197"])
	print "Aligned 198"
if (os.path.isfile("seq1198")):
	output = subprocess.check_output(["python","palign4.py", "seq1198", "seq2198"])
	print "Aligned 199"
if (os.path.isfile("seq1199")):
	output = subprocess.check_output(["python","palign4.py", "seq1199", "seq2199"])
	print "Aligned 200"
"""






















