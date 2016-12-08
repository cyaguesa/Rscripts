#!/usr/bin/Rscript

# This script parses .bedpe files (output of 'bedtools bamtobed -bedpe')
# into bed files with coordinates corresponding to the leftmost and rightmost
# coordinates of the read pair.

# It is designed to work in a pipe such as:
# bedtools bamtobed -i .bam -bedpe | ./bedpe_helper.R > .bed

f <- file("stdin")
options(scipen = 999)
open(f)
while(length(line <- readLines(f,n=1)) > 0) {
  line=strsplit(line, "\t")[[1]]
  write(paste(line[1],(min(as.numeric(line[c(2,3,5,6)]))),(max(as.numeric(line[c(2,3,5,6)]))), sep="\t"),file="")
}
