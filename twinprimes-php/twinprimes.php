<?php
	
	function printTwinPrimesToN($n){
		$arrayOfPrimes = array(2,3);

		for($i = 4; $i < $n; $i++){
			$valueIsPrime = true;
			for($j = 0; $j < sizeof($arrayOfPrimes); $j++){
				if($valueIsPrime == true && $i % $arrayOfPrimes[$j] == 0){
					$valueIsPrime = false;
				}
			}
			if($valueIsPrime == true){
				$arrayOfPrimes[sizeof($arrayOfPrimes)] = $i;
				if($arrayOfPrimes[sizeof($arrayOfPrimes)-1] - $arrayOfPrimes[sizeof($arrayOfPrimes)-2] == 2){
					echo "<" . $arrayOfPrimes[sizeof($arrayOfPrimes)-2] . "," . $arrayOfPrimes[sizeof($arrayOfPrimes)-1] . ">\n";
				}
			}
		}
	}
	
	printTwinPrimesToN(100000);
?>