n=as.integer(readline("Enter the number : "))
i=1L
fact=1L
while(i<=n){
  fact=fact*i
  i=i+1
}
#Palindrome check
j=0
rev=0
f=fact
while(j<nchar(fact)){
  x=f%%10
  rev=rev*10+x
  j=j+1
  f=as.integer(f/10)
}
print(paste("Factorial of",n,"is",fact))
if (fact==rev) print(paste(fact,"is a palindrome"))else print(paste(fact,"is not palindrome"))


