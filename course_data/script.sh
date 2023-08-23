awk -F "\t" -v OFS="\t" '
    FNR==NR {                     # Process the first input file (species file)
        species[$1] = $2;
        next;
    }
    /^>/ {
        if (match($0, /^>(EN\w+)/, id)) {  # Updated regular expression to match the ID 
format
            if (id[1] in species) {
                print $0, species[id[1]];
            } else {
                print;
            }
        } else {
            print;
        }
    }
    !/^>/ {
        print;
    }
' ensembl_gene_prefixes.txt test.fa   # Replace with actual file paths

