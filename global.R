#global.R

library(shiny)
library(gplots)
library(functional)

#read data files
nvs2 <- read.csv("N_vs_day2_whole_list.csv")
nvs12<- read.csv("N_vs_day12_whole_list.csv")
nvs20<- read.csv("N_vs_day20_whole_list.csv")

#copy contig names
contig.number <- nvs2$id

#copy log2Foldchange
nvs2.log2Foldchange <- nvs2$log2FoldChange
nvs12.log2Foldchange<- nvs12$log2FoldChange
nvs20.log2Foldchange<- nvs20$log2FoldChange

dge_pepino <- cbind(nvs2.log2Foldchange,nvs12.log2Foldchange,nvs20.log2Foldchange)
colnames(dge_pepino) <- c("Day2","Day12","Day20")
rownames(dge_pepino) <- contig.number

#Remove non-numeric values
dge_pepino <- dge_pepino[apply(dge_pepino, 1, Compose(is.finite, all)), , drop=FALSE]

#Create vector with contig names
contigs <- row.names(dge_pepino)
contigs <- as.vector(contigs)
