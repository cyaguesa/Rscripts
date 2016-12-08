# Rscripts

<b>Quick and dirty scripts for NGS analysis</b>

- bedpe_herlper.R : This script parse .bedpe files (output of 'bedtools bamtobed -bedpe') in bed files with coordinates corresponding to the leftmost and rightmost coordinates of the read pair.

- splitbed_to_splitcov.R : This script parse "split" bed files  (output of 'bedtools bamtobed -split') into bed files of the regions within read coordinate that are not directly covered by the read sequence (that is, regions corresponding to introns).
