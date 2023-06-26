nums=c(24,56,57)
for(i in nums){
  if(which(nums==i)==2){
    nums[3:(length(nums)+1)]=nums[2:length(nums)]
    nums[2]=23
    break
  }
}
print(nums)