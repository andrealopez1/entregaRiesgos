
title: "20180924 MCDA AHP"
author: "Riesgos"
date: "24 de sep de 2018"
output: html_document
---
  
Estabilidad <- t(matrix(c(1,7,7,1,1/7,1,1,1/7,1/7,1,1,1/7,1,7,7,1),nrow=4,ncol=4))
colnames(Estabilidad) = c("c1","c2","c3")
rownames(Estabilidad) = c("c1","c2","c3")

Edad<- t(matrix(c(1,2,1/3,7,1/2,1,1/5,5,3,5,1,9,1,1/5,1/9,1),nrow=4,ncol=4))
colnames(Edad) = c("c1","c2","c3")
rownames(Edad) = c("c1","c2","c3")

Codeudor <- t(matrix(c(1,1,8,8,1,1,8,8,1/8,1/8,1,9,1/8,1/8,1,1),nrow=4,ncol=4))
colnames(Codeudor) = c("c1","c","c")
rownames(Codeudor) = c("c1","c2","c3")

Obligaciones <- t(matrix(c(1,1,3,5,1,1,2,3,1/3,1/2,1,2,1/5,1/3,1/2,1),nrow=4,ncol=4))
colnames(Obligaciones) = c("c1","c2","c3")
rownames(Obligaciones) = c("c1","c2","c3")

Capacidad_cred <- t(matrix(c(1,6,1,4,1/6,1,1/6,1/2,1,6,1,4,1/4,2,1/4,1),nrow=4,ncol=4))
colnames(Capacidad_cred) = c("c1","c2","c3")
rownames(Capacidad_cred) = c("c1","c2","c3")

Salario <- t(matrix(c(1,3,3,2,1/3,1,1,1/2,1/3,1,1,1/2,1/2,2,2,1),nrow=4,ncol=4))
colnames(Salario) = c("c1","c2","c3")
rownames(Salario) = c("c1","c2","c3")

Patrimonio <- t(matrix(c(1,8,6,1,1/8,1,1/2,1,1/6,2,1,1/6,1,8,6,1),nrow=4,ncol=4))
colnames(Patrimonio) = c("c1","c2","c3")
rownames(Patrimonio) = c("c1","c2","c3")


alternativesPairwiseComparisonsList <- list(Estabilidad=Estabilidad,
                                            Edad=Edad,
                                            Codeudor=Codeudor,
                                            Obligaciones=Obligaciones,
                                            Capacidad_cred=Capacidad_cred,
                                            Salario=Salario,
                                            Patrimonio=Patrimonio)

criteriaWeightsPairwiseComparisons <- t(matrix(c(1,1/3,1/5,4,1/2,2,1/6,3,1,1/6,2,1/4,3,8,5,6,1,7,2,5,1/3,1,1/2,1/7,1,1,1/2,1/6,2,4,1/2,1,1,1,1/2,1/2,1/3,1/5,2,1,1,1/5,6,1/8,3,6,2,5,1),
                                               nrow=7,ncol=7))
colnames(criteriaWeightsPairwiseComparisons) = c("Estabilidad","Edad","Codeudor","Obligaciones","Capacidad_cred","Salario","Patrimonio")
rownames(criteriaWeightsPairwiseComparisons) = c("Estabilidad","Edad","Codeudor","Obligaciones","Capacidad_cred","Salario","Patrimonio")

overall1 <- AHP(criteriaWeightsPairwiseComparisons,alternativesPairwiseComparisonsList)

overall1