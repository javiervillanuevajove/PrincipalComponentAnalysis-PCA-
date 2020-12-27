df$X1 <- NULL
cor=cor(na.omit(df[,c(3:21)]))
cor

corrplot(cor, method = "circle", order="hclust", addrect=2, main='Pearson')
col<- colorRampPalette(c("blue", "white", "red"))
heatmap(x = cor, symm = TRUE, main = "Pearson")

p_1=prcomp(na.omit(df[,c(3:21)]),scale. = TRUE)
 
summary(p_1)

fviz_eig(p_1)
(eig.val <- get_eigenvalue(p_1))

 
   
fviz_pca_var(p_1, geom = "text",axes = c(1,2),
col.var = "contrib", 
# Color by contributions to the PC
gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
repel = TRUE,     # Avoid text overlapping
title="Pearson"
)



