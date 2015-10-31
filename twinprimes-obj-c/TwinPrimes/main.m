//
//  main.m
//  TwinPrimes
//
//  Created by Aditya Narayan on 10/30/15.
//  Copyright © 2015 turntotech.io. All rights reserved.
//

#import <Foundation/Foundation.h>

NSMutableArray* primesZeroToN(int n);
void printTwinPrimes(NSMutableArray *);

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSMutableArray *array = primesZeroToN(100000);
  }
    return 0;
}

NSMutableArray* primesZeroToN(int n) {
  NSMutableArray *arrayOfPrimes = [[NSMutableArray alloc] init];
  [arrayOfPrimes addObject:[NSNumber numberWithInt:2]];
  for (int i = 3; i < n; i++){
    bool valueIsPrime = true;
    for(int j = 0; j < arrayOfPrimes.count; j++){
      if(valueIsPrime && i % [arrayOfPrimes[j] integerValue] == 0) { valueIsPrime = false; }
    }
    if(valueIsPrime){
      [arrayOfPrimes addObject:[NSNumber numberWithInt:i]];
      unsigned long count = arrayOfPrimes.count;
      if([arrayOfPrimes[count-1] integerValue] - [arrayOfPrimes[count-2] integerValue] == 2){
        NSLog(@"<%ld,%ld>",[arrayOfPrimes[count-2] integerValue],[arrayOfPrimes[count-1] integerValue]);
      }
    }
  }
  return arrayOfPrimes;
}

void printTwinPrimes(NSMutableArray* primes){
  
  for(int i = 1; i < primes.count; i++){
    if([primes[i] integerValue] - [primes[i-1] integerValue] == 2){
      NSLog(@"<%ld,%ld>",[primes[i-1] integerValue],[primes[i] integerValue]);
    }
  }
  
}


