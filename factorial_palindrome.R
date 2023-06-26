n=as.integer(readline("Enter a number : "))
fact=1
for (i in 1:n) {
  fact=fact*i
}
print(paste("Factorial of ",n,"is",fact))
rev=0
f=fact
for(i in 1:nchar(fact)){
  rev=rev+f%%10
  f=f%/%10
}
if(fact==rev){
  print(paste("Factorial of ",n,"is palindrome"))
}else{
  print(paste("Factorial of ",n,"is not palindrome"))
}