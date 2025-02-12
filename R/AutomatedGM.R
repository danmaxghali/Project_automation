# Get coordinates

library(bio3d)

# Download PDB file
pdb_file <- get.pdb("2rh1", path = "~/Biology/Project/Project_automation/Script data/PDB")
pdb_file <- read.pdb(pdb_file)

# Filter the data
filt_pdb <- pdb_file$atom$chain == "A" & pdb_file$atom$elety == "CA"

filtered_pdb <- pdb_file$atom[filt_pdb, ]




# Select residues manually
residues <- c(31,60,67,96,103,136,147,171,197,228,267,298,305,318)

# Create logical vector to find selected residues in the data
residue_selection <- filtered_pdb$resno %in% residues

# Extract coordinates
coords <- filtered_pdb[residue_selection, c("x","y","z")]




#Geometric Morphometrics

library(geomorph)




