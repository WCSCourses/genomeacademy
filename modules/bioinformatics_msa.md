# Welcome to Bioinformatics - Part 2 
## Introduction to Multiple Sequence Aligmnents and Phylogeny 

This tutorial has been modified from a tutorial delivered at Scifest Africa by the [Student Council of the South African Society for Bioinformatics - SASBI-sc](http://sasbistudents.weebly.com)

You will explore genes for in Taste Receptors across different species! 

**Task 1:** Retrieve sequences:

Obtain the protein sequences for TAS1R3, TAS1R2 and TAS1R1 for the organisms:
- Fugu (Takifugu)
- Opossum (Didelphimorphia)
- Dog (Canis lupus familiaris)
- Human (Homo sapiens)
- Chicken (Gallus gallus domesticus)
- Japanese Medaka (Oryzias latipes)
- Pufferfish (Tetraodontidae)


Procedure:
1. Go to [https://www.ensembl.org/biomart/martview](https://www.ensembl.org/biomart/martview)
2. Select Dataset on the left menu.
3. Select Ensembl Genes 111 under the -CHOOSE DATABASE- dropdown menu.
4. Select Human Genes (GRCh38.p14) under the -CHOOSE DATASET- dropdown
menu.
5. On the left menu, select Filters to filter out the genes you are interested in.
6. Expand GENES and tick ID list limit [Max 500 advised].
7. Enter the list of genes:
```
TAS1R1
TAS1R2
TAS1R3
```
in the textbox provided and select WiKi-Gene Name(s) on the dropdown menu above the textbox.


8. On the left menu, select Attributes to get the features of your gene set.
9. Tick Sequences, then expand the Header Information section.
10. Untick all the ticked boxes.
11. Under the Gene Information section tick:
- Gene Stable ID
- Gene Name
12. Under the Exon information - select
  -CDS Length
13. Click on Results towards the top of the page - you will get a list of protein sequences for the gene list you provided.
14. Export results to a file by selecting File then FASTA from the dropdown menus in the Export all results to section.
15. Click on Go
16. A "mart_export.txt" file will download - you can rename this to the species you started with (human)


Repeat steps 4 - 14 (changing the species name under the -CHOOSE DATASET- dropdown menu) for each species to get the required protein sequences for the three species listed
below.

- Fugu (Takifugu)
- Opossum (Didelphimorphia)
- Dog (Canis lupus familiaris)

Then for these species you can right click and retrieve as follows
- Chicken (Gallus gallus domesticus)
```
wget https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/chicken_mart_export.txt
```
Or - [right click here for Chicken and open in new tab](https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/chicken_mart_export.txt)
then right click on this page and say "save as" the name the file: chicken_mart_export.txt

- Japanese Medaka (Oryzias latipes)
```
wget https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/japan_medaka_mart_export.txt
```
Or - [right click here for Japanese Medaka and open in new tab](https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/japan_medaka_mart_export.txt)
then right click on this page and say "save as" the name the file: japan_medaka_export.txt

- Pufferfish (Tetraodontidae) - If using biomart - (ENSTNIG00000011998, ENSTNIG00000014794, under gene stable ID)
```
wget https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/pufferfish_mart_export.txt
```
Or - [right click here for Pufferfish and open in new tab](https://raw.githubusercontent.com/WCSCourses/genomeacademy/main/course_data/pufferfish_mart_export.txt)
then right click on this page and say "save as" the name the file: pufferfish_mart_export.txt


Copy and paste all the sequences into a single file and call it all_sequences.fasta.

if you keep the suffix of mart_export, you can use the command:

```
cat *mart_export.txt > all_sequences.fasta
```

**Task 2** 
**Data Cleaning**
Then ensembl gene indentifier can be used to translate the organism the gene came from:

- ENSTRU	Takifugu rubripes (Fugu) 

- ENSMOD	Monodelphis domestica (Opossum) 

- ENSCAF	Canis lupus familiaris (Dog) 

- ENSGAL	Gallus gallus (Chicken) 

- ENSORL	Oryzias latipes (Medaka) 

- ENSTNI	Tetraodon nigroviridis (Tetraodon) 

Do last:
ENSG0	Homo sapiens (Human) 

Open your all sequences file with gedit 

Hit control h to open up the find replace menu, or control f, then select replace. 

In the search, place the "ENSTRU" symbol, and in the replace option, the species name - Takifugu rubripes (Fugu) for each symbol and species type.

Finally, the web aligner doesnt like spaces in the names of fasta headers, so use the replace tool to replace " " (a space, just hit space) with _ 


**Sequence Alignment**

**Task 3:** Perform a multiple sequence alignment using the sequences you retrieved.

Procedure:
1. Go to [https://www.ebi.ac.uk/Tools/msa/clustalo/](https://www.ebi.ac.uk/jdispatcher/msa/clustalo)
2. Upload the file with all the sequences you have downloaded (all_sequences.fasta) or copy all the contents of the file and paste it into the box. To Upload: Click on Choose File, navigate to the file location on the computer, then click Upload.
3. Wait for the job to complete
4. Look at the alignment of all the sequences - how does this compare to a pairwise analysis of two sequences
5. Look at the tree of these sequences, how do they compare?

Extra task - use ensembl biomart to find your favourite organism from its selection of species and retrieve the taste genes. 
How do these compare to the other species we have seen today? 



**References**

- Breslin, P. A. S. and Spector, A. C. (2008) Mammalian taste perception.
Chandrashekar, J., Hoon, M. A., Ryba, N. J. P. and Zuker, C. S. (2006) The receptors and cells for mammalian taste Nature 444, 7117, 288–294 ISSN 0028-0836.
- Fischer, A., Gilad, Y., Man, O. and Pääbo, S. (2005) Evolution of bitter taste receptors in humans and apes Molecular Biology and Evolution 22, 3, 432–436 ISSN 07374038.
- Li, R., Fan, W., Tian, G., Zhu, H., He, L., Cai, J. et al. (2010) The sequence and de novo assembly of the giant panda genome. Nature 463, 7279, 311–7 ISSN 1476-4687.
- Li, X., Li, W., Wang, H., Cao, J., Maehashi, K., Huang, L. et al. (2005) Pseudogenization of a sweet-receptor gene accounts for cats’ indifference toward sugar PLoS Genetics 1, 1, 0027–0035 ISSN 15537390.
- Shi, P. and Zhang, J. (2006) Contrasting modes of evolution between vertebrate sweet/umami receptor genes and bitter receptor genes Molecular Biology and Evolution 23, 2, 292–300 ISSN 07374038.
