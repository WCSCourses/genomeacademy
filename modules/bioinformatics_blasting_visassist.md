<body style="background-color:#ffff00;font-size:20px">
</body>
# Welcome to Bioinformatics - Part 1 
## Introduction to linux and BLAST

This practical will guide you through working with genetics in a computer. It may not be clear just yet why you would need a computer to work in advanced biology, but by the end of this practical, this will be much clearer.

We are following after our laboratory experiments in:

- Extracting DNA from cells (plant or animal)
- Making copies of a specific sequence of DNA (PCR)
- Sequencing (reading the code) of the DNA we copied

For the sake of this practical, our bioinformaticians have saved us some time by processing the raw outputs of the sequencing machine so that we are getting complete sequences of good quality.

## Technical Twisters! 

One of our staff is a practical joker, and has mixed up the file names of your outputs from the experiment! 

We have two files to process today, a plant gene, and an animal gene, but they are all mixed up! 

- Gene File A
- Gene File B

As well as being mixed up, they are also lost in with a bunch of random sequences!

You can find these in the file - mIxUp_FiLe_hahahaha.fasta

To retrieve this file, you can either copy and run this command in the Terminal:

```
wget https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/mIxUp_FiLe_hahahaha.fasta
```
you can open the terminal on by using the "Squares" icon on ubuntu, then typing terminal, or clicking the Terminal shortcut on the left hand side menu. 

Or - [right click here and open in new tab](https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/mIxUp_FiLe_hahahaha.fasta)
then right click on this page and say "save as" the name the file: mIxUp_FiLe_hahahaha.fasta


**Your Tasks**

- 1.) Get Gene A and Gene B out of the mixed up file manually. 
- 2.) Get Gene A and Gene B out of the mixed up file with commands! 
- 3.) Learn which Gene is an animal which is a plant gene
- 4.) Make an alignment of Gene A and B for fun

**Unmixing up the genes**

You will need to run some commands in the Terminal app for this tutorial. Do not worry if you are stuck,you'll be shown examples, and can always raise your hand for help. 

The file you are working with is a type of file used to list sequences ( the codes) of genes, called a fasta file. It begins with a ">" character, and then a name or description of the sequence, which is followed by the sequence on the next line. It can both nucleotide (DNA /RNA) sequences, and amino acid (protein) sequences. Heres an example of the first few lines of a fasta file below

```
>Gene 316 - super strength - 24.08.2023 - sample: P. Parker
TCACTGGTCTCGGTCCTGATTACTTGGCCGTCTCATCAATAGGGCGTCAACCGGATCTACAGGTCAATTAAGATTATCTACGGGCGGTTATCCAACCTCTGCGGTCCATCCTAGTACGGTTAAAAACAGTTACCAATTCCACCCTCGACCCTGGGGGGTGATAGTAGTCCGGCACGCGCATAGTCGCACCCTCCAGTCTAACTTGACGTAT ....
```

**Task 1**
Once you have saved or downloaded the file above, you can browse to it with the File Manager icon on the left hand side menu, or clicking "Squares" and typing File Manager. 

You can right click files and open them with Gedit, the text editor on your pc. Open the file mIxUp_FiLe_hahahaha.fasta and check it out in the text format. Can you tell the difference between the Random Genes, and the Genes A and B? Can you tell which one is a plant gene or human gene? 

Open a new Gedit page by using the "Squares" menu, then typing "Gedit" and clicking the app icon. 

You can copy  (control c) and paste (control v) the lines for Gene A (both name and sequence) into the new gedit page. You can then save this file (control s) as Gene_A.fasta. 

Repeat again for Gene B. 

**Task 2**

Now we are going to use some commands to help us get the genes out of that file! 

First, we are going to need to navigate to the file, so we know where it is. Use the terminal, and type in the command: 

```
ls
```

This command will show you what are the contents of the folder you are looking at. You can check the File Manager, and see what matches up to make sense of it. If you havent got the mixup file here, you can retrieve it with:

```
wget https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/mIxUp_FiLe_hahahaha.fasta
```

If you saved it with the right click method, and not to the /home/manager/ folder, you can copy it here, or run the command above. 

Next we need to search for the Genes out of this file by using the names of the genes. We will use the grep command which helps find text in files. (grep stands for- global regular expression print)

First run the grep command:

```
grep ">" mIxUp_FiLe_hahahaha.fasta 
```
to see the names of fasta sequences in this file. What do you see? is there a way to tell apart the difference between our genes and the random ones in the file? 

Be careful to include the "" around the > in your command. If you dont, the > symbol is a command operator that writes outputs of commands to files, and you may overwrite your file with blank info from the "grep" command :'-D. If that happens, run the wget command above again. 

Now we want to get a specific gene out - run
```
grep ">Gene_A" -A1 mIxUp_FiLe_hahahaha.fasta 
```
This command uses the full name of Gene_A to only find this gene, in addition to the "-A1" option, which will retrieve the next line following the match. 

What do you see? Lets repeat the command to save the file for us and show we used a command to save it

```
grep ">Gene_A" -A1 mIxUp_FiLe_hahahaha.fasta > Gene_A_command.fasta
```

Repeat the commands for Gene B (hint - you can replace Gene_A with Gene_B) 

**Task 3**
Now its a bit trickier to figure out which sequence is is human/animal and which is plant by looking at them. It would take AGES for a human to do by checking the sequence manually against other gene files. 

Bioinformaticians use a database of genes and software tools to query their unknown genes. Lets try find out which species Gene A is from by using a tool that can search gene databases called BLAST (Basic Local Alignment Search Tool)

Go to [https://blast.ncbi.nlm.nih.gov/Blast.cgi](https://blast.ncbi.nlm.nih.gov/Blast.cgi)

Use copy and paste to sequence of Gene A into the box saying Enter Query Sequence. Then on the bottom of the page, click the "BLAST" button. You dont need to change any of the settings. 

Wait for the results - what species does gene A come from? (hint, look at the top hits in the list)

Repeat for Gene B then answer - 

- Gene A is from species:

- Gene B is from species:

**Task 4**

As well as searching our gene sequence across a whole database, we can also query them against each other. 

Go to the website:
[https://www.ebi.ac.uk/Tools/psa/emboss_water/](https://www.ebi.ac.uk/Tools/psa/emboss_water/)

and select to compare a pair of "DNA" sequences. 

Paste the Gene A sequence into the first box. 

Paste the Gene B sequence into the second box 

then click Submit, and wait for the job to run. 

What is the identity? Did you expect that level between the two species?


Well done! You have completed the tasks! Please ask many questions, and even try with other genes if you like. 
