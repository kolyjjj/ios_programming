//
//  Possession.h
//  RandomPossessions
//
//  Created by koly on 11/19/12.
//  Copyright (c) 2012 li.koly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
//{
//    NSString *possessionName;
//    NSString *serialNumber;
//    int valueInDollars;
//    NSDate *dateCreated;
//}
+ (id)randomPossession;

//- (void)setPossessionName:(NSString *)str;
//- (NSString *)possessionName;
//- (void)setSerialNumber: (NSString *)str;
//- (NSString *)serialNumber;
//- (void)setValueInDollars:(int)i;
//- (int)valueInDollars;
//- (NSDate *)dateCreated;
- (id)initWithPossessionName:(NSString *)name ValueInDollars:(int)value SerialNumber:(NSString *)sNumber;
- (id)getIsa;

@property (nonatomic, retain) NSString *possessionName;
@property (nonatomic, retain) NSString *serialNumber;
@property (nonatomic) int *valueInDollars;
@property (nonatomic, readonly) NSDate *dateCreated;

@end
