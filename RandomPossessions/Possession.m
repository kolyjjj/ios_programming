//
//  Possession.m
//  RandomPossessions
//
//  Created by koly on 11/19/12.
//  Copyright (c) 2012 li.koly. All rights reserved.
//

#import "Possession.h"

@implementation Possession

+ (id)randomPossession
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
    
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    Possession *pos = [[Possession alloc]initWithPossessionName:randomName ValueInDollars:randomValue SerialNumber:randomSerialNumber];
    return pos;
}

- (void)setPossessionName:(NSString *)str
{
    possessionName = str;
}
- (NSString *)possessionName
{
    return possessionName;
}
- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
- (NSString *)serialNumber
{
    return serialNumber;
}
- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}
- (int)valueInDollars
{
    return valueInDollars;
}
- (NSDate *)dateCreated
{
    return dateCreated;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", possessionName,
                                   serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}

- (id)init
{
    return [self initWithPossessionName:@"possessiong 0" ValueInDollars:0 SerialNumber:@""];
}

- (id)initWithPossessionName:(NSString *)name ValueInDollars:(int)value SerialNumber:(NSString *)sNumber
{
    self = [super init];
    if(self)
    {
        [self setPossessionName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc]init];
    }
    return self;
}

- (id)getIsa
{
    return isa;
}
@end
