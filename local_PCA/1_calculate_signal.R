library(lostruct)

win <- 50
all.dat <- read_vcf("/g/data/ht96/DiIorio_UQ/scratch/4_local_PCA/finalpopulations.recode.vcf")

# Returns the PC1 values from the data
signal.eigenvector <- function(x, d, ws) {
  chunk <- d[((x-1) * ws + 1):(x * ws), ]
  temp<-chunk
  temp<-data.matrix(temp)
  data=temp
  M=rowMeans(data,na.rm=TRUE)
  M=rep(M,times=ncol(data))
  M=matrix(M,nrow=nrow(data),ncol=ncol(data),byrow=FALSE)
  data=data-M
  cov=cov(data,use="pairwise")
  if(sum(is.na(cov))>0) {return(rep(NA,(nrow(cov))))}
  PCA=eigen(cov)
  Vec=PCA$vectors
  lam=PCA$values
  PC1=Vec[,1]
  return(PC1)
}

# Returns the variance
var.function<-function(data){
  var=sum((data-mean(data))^2)/(nrow(A))
  return(var)
}
# Calculate signal for a range of window sizes
while (win <= 100) {

  k <- 1:(floor(nrow(all.dat)/win))
  PC1s <- sapply(k, signal.eigenvector, d=all.dat, ws=win)
  a=as.matrix(PC1s)
  a=t(PC1s) # set the samples as the columns
  A=matrix(0,nrow=nrow(a),ncol=ncol(a)) # lines 40:54 assign a positive or negative value to PC1s
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
  b=apply(A,2,var.function) # gives the variance for each column
  signal <- (mean(b)) # gives the mean variance
  signal <- rep(signal, nrow(A))
  signal <- as.matrix(signal)
  rownames(signal) <- k
  table_name <- paste("/g/data/ht96/DiIorio_UQ/scratch/4_local_PCA/R_results/", win, "_signal.txt", sep = "")
  write.table(signal, table_name, sep="\t")
  win <- win + 100
}
