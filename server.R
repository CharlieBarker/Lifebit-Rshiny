library(DT)
library(shiny)

#add data here
Metric <- c("Total number of variations","Heterozygous","Homozygous","Rare variations", "Single Nucleotide Variations", "Multiple Nucleotide Variations", "Insertions", "Deletions", "Nonsense", "Frameshift", "Misstart", "Nonstop", "Inframe Insertion/Deletion", "Missense", "Splice site", "Coding synonymous", "mRNA untranslated", "Intron")
Count <- c(4396158, 2028814, 1183672, 75856, 4396158, 0, 0, 0, 104, 0, 40, 39, 0, 13621, 4910, 15218, 95910, 2118847)

df <- data.frame(Metric, Count)

Classification <- c("Pathogenic","Risk factor","Drug response","Association", "Protective")
Frequency <- c(34 ,74 ,9 ,42 ,9 )

df1<- data.frame(Classification, Frequency)


#Function bit
function(input, output) {
	output$tbl = renderDT(
		df, options = list(lengthChange = FALSE), 
    )
    output$tbl1 = renderDT(
		df1, options = list(lengthChange = FALSE), 
    )
}
