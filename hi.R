


Edad<- t(matrix(c(1,2,1/3,7,1/2,1,1/5,5,3,5,1,9,1/7,1/5,1/9,1),nrow=4,ncol=4))
colnames(Edad) = c("c1","c2","c3","c4")
rownames(Edad) = c("c1","c2","c3","c4")

Codeudor <- t(matrix(c(1,1,8,8,1,1,8,8,1/8,1/8,1,9,1/8,1/8,1/9,1),nrow=4,ncol=4))
colnames(Codeudor) = c("c1","c2","c3","c4")
rownames(Codeudor) = c("c1","c2","c3","c4")

Obligaciones <- t(matrix(c(1,1,3,5,1,1,2,3,1/3,1/2,1,2,1/5,1/3,1/2,1),nrow=4,ncol=4))
colnames(Obligaciones) = c("c1","c2","c3","c4")
rownames(Obligaciones) = c("c1","c2","c3","c4")

Capacidad_cred <- t(matrix(c(1,6,1,4,1/6,1,1/6,1/2,1,6,1,4,1/4,2,1/4,1),nrow=4,ncol=4))
colnames(Capacidad_cred) = c("c1","c2","c3","c4")
rownames(Capacidad_cred) = c("c1","c2","c3","c4")

Salario <- t(matrix(c(1,3,3,2,1/3,1,1,1/2,1/3,1,1,1/2,1/2,2,2,1),nrow=4,ncol=4))
colnames(Salario) = c("c1","c2","c3","c4")
rownames(Salario) = c("c1","c2","c3","c4")

Patrimonio <- t(matrix(c(1,8,6,1,1/8,1,1/2,1/8,1/6,2,1,1/6,1,8,6,1),nrow=4,ncol=4))
colnames(Patrimonio) = c("c1","c2","c3","c4")
rownames(Patrimonio) = c("c1","c2","c3","c4")

Est <- t(matrix(c(1,7,7,1,1/7,1,1,1/7,1/7,1,1,1/7,1,7,7,1),nrow=4,ncol=4))
colnames(Patrimonio) = c("c1","c2","c3","c4")
rownames(Patrimonio) = c("c1","c2","c3","c4")

alternativesPairwiseComparisonsList <- list(Est=Est,
                                            Edad=Edad,
                                            Codeudor=Codeudor,
                                            Obligaciones=Obligaciones,
                                            Capacidad_cred=Capacidad_cred,
                                            Salario=Salario,
                                            Patrimonio=Patrimonio)

criteriaWeightsPairwiseComparisons <- t(matrix(c(1,1/3,1/5,4,1/2,2,1/6,3,1,1/6,2,1/4,3,8,5,6,1,7,2,5,1/3,1/4,1/2,1/7,1,1,1/2,1/6,2,4,1/2,1,1,1,1/2,1/2,1/3,1/5,2,1,1,1/5,6,1/8,3,6,2,5,1),
                                               nrow=7,ncol=7))
colnames(criteriaWeightsPairwiseComparisons) = c("Est","Edad","Codeudor","Obligaciones","Capacidad_cred","Salario","Patrimonio")
rownames(criteriaWeightsPairwiseComparisons) = c("Est","Edad","Codeudor","Obligaciones","Capacidad_cred","Salario","Patrimonio")

overall1 <- AHP(criteriaWeightsPairwiseComparisons,alternativesPairwiseComparisonsList)

overall1

