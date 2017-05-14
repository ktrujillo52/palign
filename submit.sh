#!/usr/bin/bash
#Submit jobs

if [ -f "seq10" ];
	then
		output1=`python palign4.py seq10 seq20`;
		output2=`python palign4_1.py seq10 seq20`;
		output3=`python palign4_2.py seq10 seq20`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`;
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`;
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 1";
										
if [ -f "seq11" ];
	then
		output1=`python palign4.py seq11 seq21`;
		output2=`python palign4_1.py seq11 seq21`;
		output3=`python palign4_2.py seq11 seq21`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 2";

if [ -f "seq12" ];
	then
		output1=`python palign4.py seq12 seq22`;
		output2=`python palign4_1.py seq12 seq22`;
		output3=`python palign4_2.py seq12 seq22`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 3";

if [ -f "seq13" ];
	then
		output1=`python palign4.py seq13 seq23`;
		output2=`python palign4_1.py seq13 seq23`;
		output3=`python palign4_2.py seq13 seq23`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 4";

if [ -f "seq14" ];
	then
		output1=`python palign4.py seq14 seq24`;
		output2=`python palign4_1.py seq14 seq24`;
		output3=`python palign4_2.py seq14 seq24`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 5";

if [ -f "seq15" ];
	then
		output1=`python palign4.py seq15 seq25`;
		output2=`python palign4_1.py seq15 seq25`;
		output3=`python palign4_2.py seq15 seq25`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 6";

if [ -f "seq16" ];
	then
		output1=`python palign4.py seq16 seq26`;
		output2=`python palign4_1.py seq16 seq26`;
		output3=`python palign4_2.py seq16 seq26`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 7";

if [ -f "seq17" ];
	then
		output1=`python palign4.py seq17 seq27`;
		output2=`python palign4_1.py seq17 seq27`;
		output3=`python palign4_2.py seq17 seq27`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 8";

if [ -f "seq18" ];
	then
		output1=`python palign4.py seq18 seq28`;
		output2=`python palign4_1.py seq18 seq28`;
		output3=`python palign4_2.py seq18 seq28`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 9";

if [ -f "seq19" ];
	then
		output1=`python palign4.py seq19 seq29`;
		output2=`python palign4_1.py seq19 seq29`;
		output3=`python palign4_2.py seq19 seq29`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 10";

if [ -f "seq110" ];
	then
		output1=`python palign4.py seq110 seq210`;
		output2=`python palign4_1.py seq110 seq210`;
		output3=`python palign4_2.py seq110 seq210`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 11";

if [ -f "seq111" ];
	then
		output1=`python palign4.py seq111 seq211`;
		output2=`python palign4_1.py seq111 seq211`;
		output3=`python palign4_2.py seq111 seq211`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 12";

if [ -f "seq112" ];
	then
		output1=`python palign4.py seq112 seq212`;
		output2=`python palign4_1.py seq112 seq212`;
		output3=`python palign4_2.py seq112 seq212`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 13";

if [ -f "seq113" ];
	then
		output1=`python palign4.py seq113 seq213`;
		output2=`python palign4_1.py seq113 seq213`;
		output3=`python palign4_2.py seq113 seq213`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 14";

if [ -f "seq114" ];
	then
		output1=`python palign4.py seq114 seq214`;
		output2=`python palign4_1.py seq114 seq214`;
		output3=`python palign4_2.py seq114 seq214`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 15";

if [ -f "seq115" ];
	then
		output1=`python palign4.py seq115 seq215`;
		output2=`python palign4_1.py seq115 seq215`;
		output3=`python palign4_2.py seq115 seq215`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 16";

if [ -f "seq116" ];
	then
		output1=`python palign4.py seq116 seq216`;
		output2=`python palign4_1.py seq116 seq216`;
		output3=`python palign4_2.py seq116 seq216`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 17";

if [ -f "seq117" ];
	then
		output1=`python palign4.py seq117 seq217`;
		output2=`python palign4_1.py seq117 seq217`;
		output3=`python palign4_2.py seq117 seq217`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 18";

if [ -f "seq118" ];
	then
		output1=`python palign4.py seq118 seq218`;
		output2=`python palign4_1.py seq118 seq218`;
		output3=`python palign4_2.py seq118 seq218`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 19";

if [ -f "seq119" ];
	then
		output1=`python palign4.py seq119 seq219`;
		output2=`python palign4_1.py seq119 seq219`;
		output3=`python palign4_2.py seq119 seq219`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 20";

if [ -f "seq120" ];
	then
		output1=`python palign4.py seq120 seq220`;
		output2=`python palign4_1.py seq120 seq220`;
		output3=`python palign4_2.py seq120 seq220`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 21";

if [ -f "seq121" ];
	then
		output1=`python palign4.py seq121 seq221`;
		output2=`python palign4_1.py seq121 seq221`;
		output3=`python palign4_2.py seq121 seq221`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 22";

if [ -f "seq122" ];
	then
		output1=`python palign4.py seq122 seq222`;
		output2=`python palign4_1.py seq122 seq222`;
		output3=`python palign4_2.py seq122 seq222`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 23";

if [ -f "seq123" ];
	then
		output1=`python palign4.py seq123 seq223`;
		output2=`python palign4_1.py seq123 seq223`;
		output3=`python palign4_2.py seq123 seq223`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 24";

if [ -f "seq124" ];
	then
		output1=`python palign4.py seq124 seq224`;
		output2=`python palign4_1.py seq124 seq224`;
		output3=`python palign4_2.py seq124 seq224`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 25";

if [ -f "seq125" ];
	then
		output1=`python palign4.py seq125 seq225`;
		output2=`python palign4_1.py seq125 seq225`;
		output3=`python palign4_2.py seq125 seq225`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 26";

if [ -f "seq126" ];
	then
		output1=`python palign4.py seq126 seq226`;
		output2=`python palign4_1.py seq126 seq226`;
		output3=`python palign4_2.py seq126 seq226`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 27";

if [ -f "seq127" ];
	then
		output1=`python palign4.py seq127 seq227`;
		output2=`python palign4_1.py seq127 seq227`;
		output3=`python palign4_2.py seq127 seq227`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 28";

if [ -f "seq128" ];
	then
		output1=`python palign4.py seq128 seq228`;
		output2=`python palign4_1.py seq128 seq228`;
		output3=`python palign4_2.py seq128 seq228`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 29";

if [ -f "seq129" ];
	then
		output1=`python palign4.py seq129 seq229`;
		output2=`python palign4_1.py seq129 seq229`;
		output3=`python palign4_2.py seq129 seq229`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 30";

if [ -f "seq130" ];
	then
		output1=`python palign4.py seq130 seq230`;
		output2=`python palign4_1.py seq130 seq230`;
		output3=`python palign4_2.py seq130 seq230`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 31";

if [ -f "seq131" ];
	then
		output1=`python palign4.py seq131 seq231`;
		output2=`python palign4_1.py seq131 seq231`;
		output3=`python palign4_2.py seq131 seq231`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 32";

if [ -f "seq132" ];
	then
		output1=`python palign4.py seq132 seq232`;
		output2=`python palign4_1.py seq132 seq232`;
		output3=`python palign4_2.py seq132 seq232`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 33";

if [ -f "seq133" ];
	then
		output1=`python palign4.py seq133 seq233`;
		output2=`python palign4_1.py seq133 seq233`;
		output3=`python palign4_2.py seq133 seq233`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 34";

if [ -f "seq134" ];
	then
		output1=`python palign4.py seq134 seq234`;
		output2=`python palign4_1.py seq134 seq234`;
		output3=`python palign4_2.py seq134 seq234`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 35";

if [ -f "seq135" ];
	then
		output1=`python palign4.py seq135 seq235`;
		output2=`python palign4_1.py seq135 seq235`;
		output3=`python palign4_2.py seq135 seq235`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 36";

if [ -f "seq136" ];
	then
		output1=`python palign4.py seq136 seq236`;
		output2=`python palign4_1.py seq136 seq236`;
		output3=`python palign4_2.py seq136 seq236`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 37";

if [ -f "seq137" ];
	then
		output1=`python palign4.py seq137 seq237`;
		output2=`python palign4_1.py seq137 seq237`;
		output3=`python palign4_2.py seq137 seq237`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 38";

if [ -f "seq138" ];
	then
		output1=`python palign4.py seq138 seq238`;
		output2=`python palign4_1.py seq138 seq238`;
		output3=`python palign4_2.py seq138 seq238`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 39";

if [ -f "seq139" ];
	then
		output1=`python palign4.py seq139 seq239`;
		output2=`python palign4_1.py seq139 seq239`;
		output3=`python palign4_2.py seq139 seq239`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 40";

if [ -f "seq140" ];
	then
		output1=`python palign4.py seq140 seq240`;
		output2=`python palign4_1.py seq140 seq240`;
		output3=`python palign4_2.py seq140 seq240`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 41";

if [ -f "seq141" ];
	then
		output1=`python palign4.py seq141 seq241`;
		output2=`python palign4_1.py seq141 seq241`;
		output3=`python palign4_2.py seq141 seq241`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 42";

if [ -f "seq142" ];
	then
		output1=`python palign4.py seq142 seq242`;
		output2=`python palign4_1.py seq142 seq242`;
		output3=`python palign4_2.py seq142 seq242`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 43";

if [ -f "seq143" ];
	then
		output1=`python palign4.py seq143 seq243`;
		output2=`python palign4_1.py seq143 seq243`;
		output3=`python palign4_2.py seq143 seq243`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 44";

if [ -f "seq144" ];
	then
		output1=`python palign4.py seq144 seq244`;
		output2=`python palign4_1.py seq144 seq244`;
		output3=`python palign4_2.py seq144 seq244`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 45";

if [ -f "seq145" ];
	then
		output1=`python palign4.py seq145 seq245`;
		output2=`python palign4_1.py seq145 seq245`;
		output3=`python palign4_2.py seq145 seq245`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 46";

if [ -f "seq146" ];
	then
		output1=`python palign4.py seq146 seq246`;
		output2=`python palign4_1.py seq146 seq246`;
		output3=`python palign4_2.py seq146 seq246`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 47";

if [ -f "seq147" ];
	then
		output1=`python palign4.py seq147 seq247`;
		output2=`python palign4_1.py seq147 seq247`;
		output3=`python palign4_2.py seq147 seq247`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 48";

if [ -f "seq148" ];
	then
		output1=`python palign4.py seq148 seq248`;
		output2=`python palign4_1.py seq148 seq248`;
		output3=`python palign4_2.py seq148 seq248`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 49";

if [ -f "seq149" ];
	then
		output1=`python palign4.py seq149 seq249`;
		output2=`python palign4_1.py seq149 seq249`;
		output3=`python palign4_2.py seq149 seq249`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 50";

if [ -f "seq150" ];
	then
		output1=`python palign4.py seq150 seq250`;
		output2=`python palign4_1.py seq150 seq250`;
		output3=`python palign4_2.py seq150 seq250`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 51";

if [ -f "seq151" ];
	then
		output1=`python palign4.py seq151 seq251`;
		output2=`python palign4_1.py seq151 seq251`;
		output3=`python palign4_2.py seq151 seq251`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 52";

if [ -f "seq152" ];
	then
		output1=`python palign4.py seq152 seq252`;
		output2=`python palign4_1.py seq152 seq252`;
		output3=`python palign4_2.py seq152 seq252`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 53";

if [ -f "seq153" ];
	then
		output1=`python palign4.py seq153 seq253`;
		output2=`python palign4_1.py seq153 seq253`;
		output3=`python palign4_2.py seq153 seq253`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 54";

if [ -f "seq154" ];
	then
		output1=`python palign4.py seq154 seq254`;
		output2=`python palign4_1.py seq154 seq254`;
		output3=`python palign4_2.py seq154 seq254`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 55";

if [ -f "seq155" ];
	then
		output1=`python palign4.py seq155 seq255`;
		output2=`python palign4_1.py seq155 seq255`;
		output3=`python palign4_2.py seq155 seq255`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 56";

if [ -f "seq156" ];
	then
		output1=`python palign4.py seq156 seq256`;
		output2=`python palign4_1.py seq156 seq256`;
		output3=`python palign4_2.py seq156 seq256`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 57";

if [ -f "seq157" ];
	then
		output1=`python palign4.py seq157 seq257`;
		output2=`python palign4_1.py seq157 seq257`;
		output3=`python palign4_2.py seq157 seq257`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 58";

if [ -f "seq158" ];
	then
		output1=`python palign4.py seq158 seq258`;
		output2=`python palign4_1.py seq158 seq258`;
		output3=`python palign4_2.py seq158 seq258`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 59";

if [ -f "seq159" ];
	then
		output1=`python palign4.py seq159 seq259`;
		output2=`python palign4_1.py seq159 seq259`;
		output3=`python palign4_2.py seq159 seq259`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 60";

if [ -f "seq160" ];
	then
		output1=`python palign4.py seq160 seq260`;
		output2=`python palign4_1.py seq160 seq260`;
		output3=`python palign4_2.py seq160 seq260`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 61";

if [ -f "seq161" ];
	then
		output1=`python palign4.py seq161 seq261`;
		output2=`python palign4_1.py seq161 seq261`;
		output3=`python palign4_2.py seq161 seq261`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 62";

if [ -f "seq162" ];
	then
		output1=`python palign4.py seq162 seq262`;
		output2=`python palign4_1.py seq162 seq262`;
		output3=`python palign4_2.py seq162 seq262`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 63";

if [ -f "seq163" ];
	then
		output1=`python palign4.py seq163 seq263`;
		output2=`python palign4_1.py seq163 seq263`;
		output3=`python palign4_2.py seq163 seq263`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 64";

if [ -f "seq164" ];
	then
		output1=`python palign4.py seq164 seq264`;
		output2=`python palign4_1.py seq164 seq264`;
		output3=`python palign4_2.py seq164 seq264`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 65";

if [ -f "seq165" ];
	then
		output1=`python palign4.py seq165 seq265`;
		output2=`python palign4_1.py seq165 seq265`;
		output3=`python palign4_2.py seq165 seq265`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 66";

if [ -f "seq166" ];
	then
		output1=`python palign4.py seq166 seq266`;
		output2=`python palign4_1.py seq166 seq266`;
		output3=`python palign4_2.py seq166 seq266`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 67";

if [ -f "seq167" ];
	then
		output1=`python palign4.py seq167 seq267`;
		output2=`python palign4_1.py seq167 seq267`;
		output3=`python palign4_2.py seq167 seq267`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 68";

if [ -f "seq168" ];
	then
		output1=`python palign4.py seq168 seq268`;
		output2=`python palign4_1.py seq168 seq268`;
		output3=`python palign4_2.py seq168 seq268`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 69";

if [ -f "seq169" ];
	then
		output1=`python palign4.py seq169 seq269`;
		output2=`python palign4_1.py seq169 seq269`;
		output3=`python palign4_2.py seq169 seq269`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 70";

if [ -f "seq170" ];
	then
		output1=`python palign4.py seq170 seq270`;
		output2=`python palign4_1.py seq170 seq270`;
		output3=`python palign4_2.py seq170 seq270`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 71";

if [ -f "seq171" ];
	then
		output1=`python palign4.py seq171 seq271`;
		output2=`python palign4_1.py seq171 seq271`;
		output3=`python palign4_2.py seq171 seq271`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 72";

if [ -f "seq172" ];
	then
		output1=`python palign4.py seq172 seq272`;
		output2=`python palign4_1.py seq172 seq272`;
		output3=`python palign4_2.py seq172 seq272`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 73";

if [ -f "seq173" ];
	then
		output1=`python palign4.py seq173 seq273`;
		output2=`python palign4_1.py seq173 seq273`;
		output3=`python palign4_2.py seq173 seq273`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 74";

if [ -f "seq174" ];
	then
		output1=`python palign4.py seq174 seq274`;
		output2=`python palign4_1.py seq174 seq274`;
		output3=`python palign4_2.py seq174 seq274`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 75";

if [ -f "seq175" ];
	then
		output1=`python palign4.py seq175 seq275`;
		output2=`python palign4_1.py seq175 seq275`;
		output3=`python palign4_2.py seq175 seq275`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 76";

if [ -f "seq176" ];
	then
		output1=`python palign4.py seq176 seq276`;
		output2=`python palign4_1.py seq176 seq276`;
		output3=`python palign4_2.py seq176 seq276`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 77";

if [ -f "seq177" ];
	then
		output1=`python palign4.py seq177 seq277`;
		output2=`python palign4_1.py seq177 seq277`;
		output3=`python palign4_2.py seq177 seq277`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 78";

if [ -f "seq178" ];
	then
		output1=`python palign4.py seq178 seq278`;
		output2=`python palign4_1.py seq178 seq278`;
		output3=`python palign4_2.py seq178 seq278`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 79";

if [ -f "seq179" ];
	then
		output1=`python palign4.py seq179 seq279`;
		output2=`python palign4_1.py seq179 seq279`;
		output3=`python palign4_2.py seq179 seq279`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 80";

if [ -f "seq180" ];
	then
		output1=`python palign4.py seq180 seq280`;
		output2=`python palign4_1.py seq180 seq280`;
		output3=`python palign4_2.py seq180 seq280`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 81";

if [ -f "seq181" ];
	then
		output1=`python palign4.py seq181 seq281`;
		output2=`python palign4_1.py seq181 seq281`;
		output3=`python palign4_2.py seq181 seq281`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 82";

if [ -f "seq182" ];
	then
		output1=`python palign4.py seq182 seq282`;
		output2=`python palign4_1.py seq182 seq282`;
		output3=`python palign4_2.py seq182 seq282`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 83";

if [ -f "seq183" ];
	then
		output1=`python palign4.py seq183 seq283`;
		output2=`python palign4_1.py seq183 seq283`;
		output3=`python palign4_2.py seq183 seq283`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 84";

if [ -f "seq184" ];
	then
		output1=`python palign4.py seq184 seq284`;
		output2=`python palign4_1.py seq184 seq284`;
		output3=`python palign4_2.py seq184 seq284`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 85";

if [ -f "seq185" ];
	then
		output1=`python palign4.py seq185 seq285`;
		output2=`python palign4_1.py seq185 seq285`;
		output3=`python palign4_2.py seq185 seq285`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 86";

if [ -f "seq186" ];
	then
		output1=`python palign4.py seq186 seq286`;
		output2=`python palign4_1.py seq186 seq286`;
		output3=`python palign4_2.py seq186 seq286`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 87";

if [ -f "seq187" ];
	then
		output1=`python palign4.py seq187 seq287`;
		output2=`python palign4_1.py seq187 seq287`;
		output3=`python palign4_2.py seq187 seq287`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 88";

if [ -f "seq188" ];
	then
		output1=`python palign4.py seq188 seq288`;
		output2=`python palign4_1.py seq188 seq288`;
		output3=`python palign4_2.py seq188 seq288`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 89";

if [ -f "seq189" ];
	then
		output1=`python palign4.py seq189 seq289`;
		output2=`python palign4_1.py seq189 seq289`;
		output3=`python palign4_2.py seq189 seq289`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 90";

if [ -f "seq190" ];
	then
		output1=`python palign4.py seq190 seq290`;
		output2=`python palign4_1.py seq190 seq290`;
		output3=`python palign4_2.py seq190 seq290`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 91";

if [ -f "seq191" ];
	then
		output1=`python palign4.py seq191 seq291`;
		output2=`python palign4_1.py seq191 seq291`;
		output3=`python palign4_2.py seq191 seq291`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 92";

if [ -f "seq192" ];
	then
		output1=`python palign4.py seq192 seq292`;
		output2=`python palign4_1.py seq192 seq292`;
		output3=`python palign4_2.py seq192 seq292`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 93";

if [ -f "seq193" ];
	then
		output1=`python palign4.py seq193 seq293`;
		output2=`python palign4_1.py seq193 seq293`;
		output3=`python palign4_2.py seq193 seq293`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 94";

if [ -f "seq194" ];
	then
		output1=`python palign4.py seq194 seq294`;
		output2=`python palign4_1.py seq194 seq294`;
		output3=`python palign4_2.py seq194 seq294`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 95";

if [ -f "seq195" ];
	then
		output1=`python palign4.py seq195 seq295`;
		output2=`python palign4_1.py seq195 seq295`;
		output3=`python palign4_2.py seq195 seq295`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 96";

if [ -f "seq196" ];
	then
		output1=`python palign4.py seq196 seq296`;
		output2=`python palign4_1.py seq196 seq296`;
		output3=`python palign4_2.py seq196 seq296`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 97";

if [ -f "seq197" ];
	then
		output1=`python palign4.py seq197 seq297`;
		output2=`python palign4_1.py seq197 seq297`;
		output3=`python palign4_2.py seq197 seq297`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 98";

if [ -f "seq198" ];
	then
		output1=`python palign4.py seq198 seq298`;
		output2=`python palign4_1.py seq198 seq298`;
		output3=`python palign4_2.py seq198 seq298`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 99";

if [ -f "seq199" ];
	then
		output1=`python palign4.py seq199 seq299`;
		output2=`python palign4_1.py seq199 seq299`;
		output3=`python palign4_2.py seq199 seq299`;
		if [ "$output1" -ge "$output2" ] && [ "$output1" -ge "$output3" ];
			then
				variable=`cat alignment1.txt >> Palign_output`
		fi
		if [ "$output2" -gt "$output1" ] && [ "$output2" -ge "$output3" ];
			then
				variable=`cat alignment2.txt >> Palign_output`
		fi
		if [ "$output3" -gt "$output1" ] && [ "$output3" -gt "$output2" ];
			then
				variable=`cat alignment3.txt >> Palign_output`;
		fi
fi
echo "Aligned 100";
