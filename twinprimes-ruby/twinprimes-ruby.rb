#!/usr/bin/ruby

def printTwinPrimesToN(n)
	arrayOfPrimes = Array.new
	arrayOfPrimes.push(2)
	for i in 3..n 
		valueIsPrime = true;
		for j in 0..arrayOfPrimes.length
			if valueIsPrime && i % arrayOfPrimes[j-1] == 0
				valueIsPrime = false
			end
		end
		if valueIsPrime 
			arrayOfPrimes.push(i)
			if arrayOfPrimes[arrayOfPrimes.length-1] - arrayOfPrimes[arrayOfPrimes.length-2] == 2
				puts "<" + arrayOfPrimes[arrayOfPrimes.length-2].to_s + ", " + arrayOfPrimes[arrayOfPrimes.length-1].to_s + ">"
			end
		end
	end
end

printTwinPrimesToN(100000)