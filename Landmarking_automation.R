# Pull coordinates from PDB - having a go
library(bio3d)
#library(data.table)
#library(dplyr)

# Dowload PDB file
in_2rh1 <- get.pdb("2rh1", path = "~/Biology/Project/Project_R/Script data/PDB")
in_2rh1 <- read.pdb(in_2rh1)
# in_2rh1 <- as.data.table(in_2rh1$atom)
ss_struc <- dssp(in_2rh1)


# Select alhpa carbon atoms and A chain
A_chain <- atom.select(in_2rh1, chain = "A", elety = "CA")

# Select secondary structure to find TMH 1-7




in_2rh1 <- read.pdb("2rh1")
sse <- dssp(in_2rh1)
sse2 <- stride(in_2rh1) 

sse
sse2