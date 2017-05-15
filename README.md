# palign
Permutation-based sequence alignment program uses a BLOSUM matrix to find the best alignment between any two protein sequences. 
## Requirements
- Python
## Usage
First format the input with the following command:
```
python seqbin.py
```

- You need to have two FASTA files in your directory, simply enter these filenames as prompted. The program will create output files containing bins of sequences. 
- Note: Tryptophan residues (W) need to be converted to *. Sequence length limit is 500.
- Note: palign.py files cannot accept gapped sequences. If starting from an aligned sequence, please submit partitions of the sequence in a manner that preserves gaps in the output file.

Then run the following script to start the job:
 ```
 bash submit.sh
 ```
 
 - This will create an output file containing the sequence alignment. 
