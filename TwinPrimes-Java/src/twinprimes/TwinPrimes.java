package twinprimes;

import java.util.ArrayList;

public class TwinPrimes {
	static void printTwinPrimes(int n){
		ArrayList arrayOfPrimes = new ArrayList();
		int two = 2;
		arrayOfPrimes.add(two);
		arrayOfPrimes.add(3);
		System.out.println("Hi");
		for(int i = 4; i < n; i++){
			Boolean valueIsPrime = true;
                        for (Object arrayOfPrime : arrayOfPrimes) {
                            if (valueIsPrime && i % (Integer)arrayOfPrime == 0) {
                                valueIsPrime = false;
                            }
                        }
			if(valueIsPrime) {
                            arrayOfPrimes.add(i);	
                                if(((Integer)arrayOfPrimes.get(arrayOfPrimes.size()-1) - (Integer)arrayOfPrimes.get(arrayOfPrimes.size()-2)) == 2){
                                    System.out.println(String.format("<%d, %d>",(Integer)arrayOfPrimes.get(arrayOfPrimes.size()-1),(Integer)arrayOfPrimes.get(arrayOfPrimes.size()-2)));
				}
			}
		}
	}
	    
    public static void main(String[] args) {
        
        printTwinPrimes(100000);
    }
    
}
