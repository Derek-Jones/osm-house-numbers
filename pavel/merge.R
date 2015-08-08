minmax <- read.table('~dmjones/house-min-max.txt', sep='|',quote="")
names(minmax) <- c("postcode","street","min","max")

postcodes <- read.csv("postcodes.csv")
minmax$postcode <- gsub("^\\s*(.*?)\\s*$", "\\1", minmax$postcode)
m <- merge(minmax,postcodes)
write.csv(m, "output.csv")
