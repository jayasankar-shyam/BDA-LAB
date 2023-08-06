fibo=function(n){
  if(n<=1){
    return(n)
  }else{
    return(fibo(n-1)+fibo(n-2))
  }
}
n=as.integer(readline("Enter the length of series : "))
series=c()
for(i in 0:(n-1)){
  series[i+1]=fibo(i)
}
print(series)
