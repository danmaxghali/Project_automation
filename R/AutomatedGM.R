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


# Get coordinates straight from spreadsheet
library(readxl)

# Read in spreadsheet
b2ar_extra <- read.table("~/Biology/Project/MorphoJ/Inputs/B2AR_Extra.txt", header = FALSE, sep = " ")

landmarks <- readland.tps(b2ar_extra, specID = TRUE)

# Assign column names manually
num_landmarks <- ncol(b2ar_extra_df) / 3 
colnames(b2ar_extra_df) <- unlist(lapply(1:num_landmarks, function(i) paste0(c("x", "y", "z"), i)))

# Convert to matrix
b2ar_extra_matrix <- as.matrix(b2ar_extra_df)

# Make numeric
b2ar_extra_matrix <- apply(b2ar_extra_matrix, 2, as.numeric)

str(b2ar_extra_matrix)





# Geometric Morphometrics

library(geomorph)


# 




