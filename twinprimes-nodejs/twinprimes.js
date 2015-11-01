
function printTwinPrimesToN(n){
	var arrayOfPrimes = [2];
	for(i = 3; i < n; i++) {
		valueIsPrime = true;
		
		for (j = 0; j < arrayOfPrimes.length; j++){
			if(valueIsPrime && i % arrayOfPrimes[j] == 0) {
				valueIsPrime = false;
			}
		}
		
		if(valueIsPrime == true) {
			arrayOfPrimes.push(i);
			if(arrayOfPrimes[arrayOfPrimes.length - 1] - arrayOfPrimes[arrayOfPrimes.length - 2] == 2){
				console.log("<".concat(arrayOfPrimes[arrayOfPrimes.length - 2],", ",arrayOfPrimes[arrayOfPrimes.length - 1],">"));
			}
		}
	}
}

printTwinPrimesToN(100000)