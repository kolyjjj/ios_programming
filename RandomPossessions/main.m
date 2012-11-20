//
//  main.m
//  RandomPossessions
//
//  Created by koly on 11/19/12.
//  Copyright (c) 2012 li.koly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"


void printHelloWorld(){
    NSLog(@"This is a test method to print Hello World to the console.");
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        
        [items insertObject:@"insert" atIndex:1];
        
        unsigned long length = [items count];
        [items insertObject:@"outOfBound" atIndex:length];
        
        for (int i = 0; i < [items count]; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        
        Possession *pos = [[Possession alloc]init];
        [pos setPossessionName:@"Red Sofa"];
        [pos setSerialNumber:@"A1B2C"];
        [pos setValueInDollars:100];
        NSLog(@"%@,%@,%@,%d", [pos possessionName], [pos dateCreated], [pos serialNumber], [pos valueInDollars]);
        NSLog(@"%@", pos);
        
        Possession * anotherPos = [[Possession alloc ]initWithPossessionName:@"China" ValueInDollars:100 SerialNumber:@"Do"];
        NSLog(@"Here is another possession: %@", anotherPos);
        
        printHelloWorld();
        
        NSLog(@"the random possession is: %@", [Possession randomPossession]);
        NSLog(@"the isa pointer is: %@", [anotherPos getIsa]);
    
//     test the array out of boundary
//        NSArray *array = [[NSArray alloc]init];
//
//        [array insertValue:@"Array out of bound" atIndex:1 inPropertyWithKey:nil];
//        unsigned long arrayLength = [array count];
//        NSLog(@"%@", arrayLength);
//        NSLog(@"%@", 8);
        
        
        //It's the final show time!!!
        NSLog(@"\n\n\nHey man, this is the final show time!");
        NSMutableArray *finalArray = [[NSMutableArray alloc]init];
        for (int i = 0; i < 10; i++) {
            [finalArray addObject:[Possession randomPossession]];
        }
        
        for (int i = 0; i < [finalArray count]; i++) {
            NSLog(@"%@\n", [finalArray objectAtIndex:i]);
        }
        
        
        items = nil;
        
    }
    return 0;
}


