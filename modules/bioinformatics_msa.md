# Welcome to Bioinformatics - Part 2 
## Introduction to Multiple Sequence Aligmnents and Phylogeny 

This tutorial has been modified from a tutorial delivered at Scifest Africa by the [Student Council of the South African Society for Bioinformatics](SASBi)(http://sasbistudents.weebly.com).

You will explore genes for in Taste Receptors across different species! 

Task 1: Obtain the protein sequences for TAS1R3, TAS1R2 and TAS1R1 for the organisms.
-1 Fugu
-2 Pufferfish
-3 Opossum
-4 Dog
-5 Human
-6 Chicken
-7 Medaka

Procedure:
1. Go to [https://www.ensembl.org/biomart/](https://www.ensembl.org/biomart/)
2. Select Biomart on the left menu.
3. Select Dataset on the left menu.
4. Select Ensembl Genes 110 under the -CHOOSE DATABASE- dropdown menu.
5. Select Human Genes (GRCh38.p14) under the -CHOOSE DATASET- dropdown
menu.
6. On the left menu, select Filters to filter out the genes you are interested in.
7. Expand GENES and tick ID list limit [Max 500 advised].
8. Enter the list of genes (TAS1R1,TAS1R2,TAS1R3) in the textbox provided and select WiKi-
Gene Name(s) on the dropdown menu above the textbox.
9. On the left menu, select Attributes to get the features of your gene set.
10. Tick Sequences, then expand the Header Information section.
11. Untick all the ticked boxes.
12. Tick Associated Gene Name under the Gene Information
13. Click on Results towards the top of the page - you will get a list of protein sequences
for the gene list you provided.
14. Export results to a file by selecting File then FASTA from the dropdown menus in the
Export all results to section.
15. Click on Go - You have now downloaded the human T1R1, T1R2 and T1R3 protein sequences.
Repeat steps 4 - 14 (changing the species name under the -CHOOSE DATASET- dropdown
menu) for each species to get the required protein sequences for all the species listed
below.
Organism T1R1 T1R2 T1R3
Fugu (Takifugu)
Pufferfish (Tetraodontidae)
Opossum (Didelphimorphia)
Dog (Canis lupus familiaris)
Human (Homo sapiens)
Chicken (Gallus gallus domesticus)
Medaka (Oryzias latipes)
Copy and paste all the sequences into a single file and call it all_sequences.fasta.
Sequence Alignment (approx. 30 min)
Task 2: Perform a multiple sequence alignment using the sequences you retrieved.
Procedure:
1. Go to http://darwin.bioinf.wits.ac.za or http://146.141.177.10/.
2. Select the wEMBOSS tool. Click on Launch wEMBOSS.
3. Use the login details provided.
4. Create a new project. Call it Taste (refresh page after).
5. Upload the file with all the sequences you have downloaded (all_sequences.fasta):
Click on Choose File, navigate to the file location on the computer, then click Open.
Click on Upload.
6. Add the all_sequences.fasta file to the protein list:
Select ProtList from the list of files.
Click on Edit.
Add the file name to the list.
Click Save As, then OK.
7. On the left menu, expand ALIGNMENT, then MULTIPLE, then click on edialign.
8. Under INPUT, select all_sequences.fasta from the dropdown menu.
9. Under OUTPUT, select CLUSTAL.aln.
10. Leave everything as default, then click Run edialign.
11. Click on PM to go back to your project.
12. Under PROJECT RESULTS, click on FILES on the output for the edialign program you
just ran.
13. Select all_sequences.clustal then click OK to copy the file to your Taste project.
You have now aligned your sequences.
Phylogenetic Analysis (approx. 30 min)
Task 3: Draw a phylogenetic tree using the aligned sequences.
Procedure:
1. Select all_sequences.clustal from your project files.
2. Click on View with.
3. A Java authentification page will popup. Enter the login details provided, then click
on Start Jalview on the small window that opens.
4. The JalView application displays the alignment of your protein sequences as well as
the similarities between residues aligned.
5. Select Calculate > Neighbor Joining Using % Identity.
You have generated the phylogenetic tree of sweet and umami taste receptors from the
seven organisms. What does this mean?
References

Breslin, P. A. S. and Spector, A. C. (2008) Mammalian taste perception.
Chandrashekar, J., Hoon, M. A., Ryba, N. J. P. and Zuker, C. S. (2006) The receptors and cells for mammalian
taste Nature 444, 7117, 288–294 ISSN 0028-0836.
Fischer, A., Gilad, Y., Man, O. and Pääbo, S. (2005) Evolution of bitter taste receptors in humans and apes
Molecular Biology and Evolution 22, 3, 432–436 ISSN 07374038.
Li, R., Fan, W., Tian, G., Zhu, H., He, L., Cai, J. et al. (2010) The sequence and de novo assembly of the giant
panda genome. Nature 463, 7279, 311–7 ISSN 1476-4687.
Li, X., Li, W., Wang, H., Cao, J., Maehashi, K., Huang, L. et al. (2005) Pseudogenization of a sweet-receptor gene
accounts for cats’ indifference toward sugar PLoS Genetics 1, 1, 0027–0035 ISSN 15537390.
Shi, P. and Zhang, J. (2006) Contrasting modes of evolution between vertebrate sweet/umami receptor genes
and bitter receptor genes Molecular Biology and Evolution 23, 2, 292–300 ISSN 07374038.
