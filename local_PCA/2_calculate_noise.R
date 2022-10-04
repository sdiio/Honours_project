library(lostruct)

win <- 100
all.dat <- read_vcf("PATH_HERE")

# Returns the PC1 values from the data
noise.eigenvector <- function(x, d) {
  step <- round(nrow(d)/10)
  chunk <- d[-(((x-1)*step + 1):(x*step)), ]
  temp<-chunk
  temp<-data.matrix(temp)
  data=temp
  M=rowMeans(data,na.rm=TRUE)
  M=rep(M,times=ncol(data))
  M=matrix(M,nrow=nrow(data),ncol=ncol(data),byrow=FALSE)
  data=data-M
  cov=cov(data,use="pairwise")
  if(sum(is.na(cov))>0) {return(rep(NA,nrow(cov)))}
  PCA=eigen(cov)
  Vec=PCA$vectors
  lam=PCA$values
  PC1=Vec[,1]
  return(PC1)
}

# Returns the standard error
SE.function<-function(data){
  var=9/10*sum((data-mean(data))^2)
  return(var)
}

# Calculates the mean standard error for each window (noise)
get.noise.PC1s <- function(i, da, ws) {

  index <- (ws * (i-1) + 1):(ws * i)
  usedata <- da[index, ]
  PC1s <- sapply(1:10, noise.eigenvector, d=usedata)
  if(sum(is.na(PC1s))>0) {return(NA)}
  a=as.matrix(PC1s)
  a=t(a)
  A=matrix(0,nrow=nrow(a),ncol=ncol(a))
  S=rep(0,nrow(A))
  for(i in 1:nrow(A))
  {
    if (sum((a[1,]-a[i,])^2)<sum((a[1,]+a[i,])^2))
    {
      S[i]=1
      A[i,]=a[i,]
    }
    else
    {
      S[i]=-1
      A[i,]=-a[i,]
    }
  }
  b=apply(A,2,SE.function)
  return=(mean(b))
}

# Calculate noise for a range of window sizes
while (win <= 1000) {

  k <- 1:(floor(nrow(all.dat)/win))
  noise <- sapply(k, get.noise.PC1s, da=all.dat, ws=win)
  noise <- as.matrix(noise)
  rownames(noise) <- k
  table_name <- paste("PATH_HERE", win, "_noise.txt", sep = "")
  write.table(noise, table_name, sep="\t")

  win <- win + 100
}
