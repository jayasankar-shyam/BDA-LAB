gcd=function(a,b){
  while(b!=0)
  {
    temp=b
    b=a%%b
    a=temp
  }
  return(abs(a))
}
print(gcd(24,30))
