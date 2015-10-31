#!/usr/bin/python

def printTwinPrimesToN(n):
	arrayOfPrimes = list()
	arrayOfPrimes.append(2)
	arrayOfPrimes.append(3)
	
	for i in range(4,n):
		valueIsPrime = True
		for j in range(0,len(arrayOfPrimes)):
			if(valueIsPrime and i % arrayOfPrimes[j] == 0):
				valueIsPrime = False
		if(valueIsPrime):
			arrayOfPrimes.append(i)
			if arrayOfPrimes[len(arrayOfPrimes) - 1] - arrayOfPrimes[(len(arrayOfPrimes) - 2)] == 2:
				print "<",arrayOfPrimes[(len(arrayOfPrimes) - 2)],",",arrayOfPrimes[(len(arrayOfPrimes) - 1)],">"
	return
	
printTwinPrimesToN(100000)