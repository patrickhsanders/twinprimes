//
//  main.swift
//  TwinPrimes-swift
//
//  Created by Patrick Sanders on 30.10.15.
//  Copyright © 2015 turntotech. All rights reserved.
//

import Foundation

func printTwinPrimesToN(n: Int) -> Void {
    var arrayOfPrimes: [Int] = [2,3]
    
    for var i:Int = 4; i < n; i++ {
        var valueIsPrime:Bool = true;
        
        for var j:Int = 0; j < arrayOfPrimes.count; j++ {
            if(valueIsPrime && i % arrayOfPrimes[j] == 0) {
                valueIsPrime = false
            }
        }
        
        if valueIsPrime {
            arrayOfPrimes.append(i)
            if arrayOfPrimes[arrayOfPrimes.count - 1] - arrayOfPrimes[arrayOfPrimes.count - 2] == 2 {
                print("<\(arrayOfPrimes[arrayOfPrimes.count-2]), \(arrayOfPrimes[arrayOfPrimes.count-1])>")
            }
        }
    }
}

printTwinPrimesToN(100000)