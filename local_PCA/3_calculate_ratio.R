library(lostruct)

library(tools)
library(stringr)

# Load files from directory into list
signal_files <- list.files(path = "", pattern="signal")
noise_files <- list.files(path = "", pattern="noise")

# Match the file from noise files to the corrosponding file from signal_files
 foreach(i=1:length(signal_files)) %do% {
     signal <- read.table(paste("###################", sep = ""))

     for (j in 1:length(noise_files)){
         if (str_split(signal_files[i], "_", n = 2, simplify=TRUE)[1] == str_split(noise_files, "_", n = 2, simplify=TRUE)) {
             noise <- read.table(paste("#######", sep = ""))
         }
     }

# Calculate the signal:noise ratio for each window and save to file
signal_noise <- cbind(signal, noise)
colnames(signal_noise) <- c("signal", "noise")
snratios <- signal_noise$signal/signal_noise$noise
snratios <- as.matrix(snratios)
table_name_1 <- paste(" "_ratio.txt", sep = "")
write.table(snratios, table_name_1, sep="\t")

# Calculate the % of windows with signal > noise and save to file
sig_rat <- sum(snratios > 1)
sig_perc <- sig_rat/nrow(snratios)
table_name_2 <- paste("",  "_ratio_perc.txt", sep = "")
write.table(sig_perc, table_name_2, sep="\t")

}
