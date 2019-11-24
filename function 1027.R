myfunction <- function(a=1, b=2, c="안녕"){
  # print(a+b)
  # print(c)
  result <-(a+b)
  return(result)
}


abc <- myfunction()


fjf <- function(x,y,z){
  if(x<10){
    y+z
    return(y+z)
    
  }else if(x>10){
    y*z 
    return(y*z)
  }
}

fjf(11,2,3)

fjf <- function(x,y,z){
  result<-0
  if(x<10){
    result<-y+z
  }else if(x>10){
    result<-y*z
  }
  return(result)
}

abc<-fjf(11,2,3)

def<-fjf(5,2,3)


for (i in 1:10){
  print(i)
}

x = seq(2,20,2)

for (i in 4:6){
  print(x[i])
}

x = 1:10
evenresult<-c()
oddresult<-c()
for(i in x){
  if(i%%2==0){
    evenresult<-c(evenresult,i)
  }else{
    oddresult<-c(oddresult,i)
  }
}


x = 1:10
evenresult<-0

oddresult<-0
for(i in x){
  if(i%%2==0){
    evenresult<-evenresult+1
  }else if(i%%2==1){
    oddresult<-oddresult+1
  }
}




