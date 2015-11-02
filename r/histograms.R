stuff <- read.table("/Users/patrick/desktop/twinprimes.output.txt", header = TRUE)
nums = stuff[,1]
hist(nums, main="Histogram of Twin Primes (2 to 100,000)", 
     xlab="Twin prime pairs", breaks=500)

stuff <- read.table("/Users/patrick/desktop/twinprimes2.output.txt", header = TRUE)
nums2 = stuff[,1]

hist(nums2, main="Histogram of Twin Primes (3 to 100,000)", 
     xlab="Twin prime pairs", breaks=45)

