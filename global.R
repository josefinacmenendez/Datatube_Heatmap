#global.R

library(shiny)
library(gplots)

diff_exp_pepino <- read.csv("pepino_dge.csv") #this should have github repository link
contigs <- diff_exp_pepino[,1]
diff_exp_pepino_df <- cbind(diff_exp_pepino[,2], diff_exp_pepino[,3], diff_exp_pepino[,4])
rownames(diff_exp_pepino_df)<-contigs
colnames(diff_exp_pepino_df)<-c("Day2","Day12","Day20")
contigs <- as.vector(contigs)
