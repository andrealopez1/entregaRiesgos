


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









#Formar tabla de respuestas 
respuestas<-c(1,2,2,1,2,3,1,5,1,1,2,2,3,3,4,5,4,2,4,3,3,1,1,2,4,1,2,4)
datos<-matrix(data=respuestas, ncol=4,nrow=7,byrow=TRUE)
colnames(datos) = c("c1","c2","c3","c4")
rownames(datos) = c("Estabilidad laboral","Edad","Codeudor","Obligaciones","Capacidad crediticia","Salario","Patrimonio")
View(datos)

#Separar las filas de la tabla en vectores
estabilidadLaboral<- as.numeric(datos[1, ])
edad              <- as.numeric(datos[2, ])
codeudor          <- as.numeric(datos[3, ])
obligaciones      <- as.numeric(datos[4, ])
capacidadCreditica<- as.numeric(datos[5, ])
salario           <- as.numeric(datos[6, ])
patrimonio        <- as.numeric(datos[7, ])
#Añadir nombre a los elementos del vector
n <- c("c1","c2","c3","c4")
names(estabilidadLaboral) <- n
names(edad)               <- n
names(codeudor)           <- n
names(obligaciones)       <- n
names(capacidadCreditica) <- n
names(salario)            <- n
names(patrimonio)         <- n


#Función para todos los criterios con opciones de 1 a 5
graf<-function(v,titulo,vEjex, ejexnombre,tipo){
  
  f <- c(0,0,0,0,0)
  names(f)<- vEjex
  
  for( i in 1:(length(v)) ){
    
    if(v[i]==1) f[1]= f[1]+1
    else{
      if(v[i]==2) f[2]= f[2]+1
      else{
        if(v[i]==3) f[3]= f[3]+1
        else{
          if(v[i]==4) f[4]= f[4]+1
          else{
            if(v[i]==5) f[5]= f[5]+1
          }
        }
      }
    }
  }
  if (tipo=="barras")return(barplot(f,  col= c("green", "blue", "pink", "yellow","orange","purple"),xlab=ejexnombre, ylab="Número de Clientes",main=titulo))
  else
    return(pie(f,  col= c("green", "blue", "pink", "yellow","orange","purple"),xlab=ejexnombre, ylab="Número de Clientes",main=titulo))
}


#Función para todos los criterios con opciones de 1 y 2
graf2<-function(v,titulo,vEjex, ejexnombre,tipo){
  
  f <- c(0,0)
  names(f)<- vEjex
  
  for( i in 1:(length(v)) ){
    
    if(v[i]==1) f[1]= f[1]+1
    else{
      if(v[i]==2) f[2]= f[2]+1
    }
  }
  if (tipo=="barras")return(barplot(f,  col= c("green","red"),xlab=ejexnombre, ylab="Número de Clientes",main=titulo))
  else
    return(pie(f,  col= c("green", "red"),xlab=ejexnombre, ylab="Número de Clientes",main=titulo))
}


#Gráficas: de barras y torta

w<-c("18-25","26-35" , "36-45" , "46-55", ">55")
graf(edad,"Frecuencia de clientes por rango de edad",w, "Rango de edades","barras")
graf(edad,"Frecuencia de clientes por rango de edad",w, "Rango de edades","torta")

w<-c("Ninguna","Pocas", "Mas o menos", "Muchas", "Muchísimas" )
graf(obligaciones,"Frecuencia por nivel de obligaciones pendientes",w, "Niveles de obligaciones pendientes","barras")
graf(obligaciones,"Frecuencia por nivel de obligaciones pendientes",w, "Niveles de obligaciones pendientes","torta")

w<-c("Ninguna","Baja", "Media", "Buena", "Excelente")
graf(capacidadCreditica,"Frecuencia por niveles de capacidad crediticia ",w, "Nivel de capacidad crediticia","barras")
graf(capacidadCreditica,"Frecuencia por niveles de capacidad crediticia ",w, "Nivel de capacidad crediticia","torta")

w <- c("1-1.5","1.5-3","3-4","4-5",">5")
graf(salario,"Frecuencia por valor del salario",w, "Intervalos de salario, en SMLV","barras")
graf(salario,"Frecuencia por valor del salario",w, "Intervalos de salario, en SMLV","torta")

w<-c("<50", "50-100", "100-150","150-400",">400")
graf(patrimonio,"Frecuencia por valor del patrimonio",w,"Intervalos de patrimonio, en millones de pesos","barras")
graf(patrimonio,"Frecuencia por valor del patrimonio",w,"Intervalos de patrimonio, en millones de pesos","torta")

w<-c("Con trabajo estable","Sin trabajo estable")
graf2(estabilidadLaboral,"Frecuencia por estado de estabilidad laboral",w,"Estado de trabajo","barras")
graf2(estabilidadLaboral,"Frecuencia por estado de estabilidad laboral",w,"Estado de trabajo","torta")

w<-c("Con codeudor","Sin codeudor")
graf2(codeudor,"Frecuencia por requisito de codeudor",w,"Posesión de codeudor","barras")
graf2(codeudor,"Frecuencia por requisito de codeudor",w,"Posesión de codeudor","torta")




