# Rscripts

<b>Quick and dirty scripts for NGS analysis</b>

<u>- bedpe_herlper.R</u> : This script parses .bedpe files (output of <i>'bedtools bamtobed -bedpe'</i>) into bed files with coordinates corresponding to the leftmost and rightmost coordinates of the read pair.

<u>- splitbed_to_splitcov.R</u> : This scripts parse "split" .bed files  (output of <i>'bedtools bamtobed -split'</i>) into bed files of the regions within read coordinate that are not directly covered by the read sequence (that is, regions corresponding to introns).
