//
//  StoreTagWordToiDrive.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/10/02.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "StoreTagWordToiDrive.h"

@interface StoreTagWordToiDrive()


@end

@implementation StoreTagWordToiDrive

-(id)init
{
    self =[super init];
    if(self){

        [self RestoreAlliDriveToArray];
        if(!self.TagWordsA){
            self.TagWordsA = [[NSMutableArray alloc] init];
        }
        if(!self.TagWordsB||![self.TagWordsB isKindOfClass:[NSMutableArray class]]){
            self.TagWordsB = [[NSMutableArray alloc] init];
        }
        if(!self.TagWordsC||![self.TagWordsC isKindOfClass:[NSMutableArray class]]){
            self.TagWordsC =[[NSMutableArray alloc] init];
        }
        if(!self.TagWordsD||![self.TagWordsD isKindOfClass:[NSMutableArray class]]){
            self.TagWordsD =[[NSMutableArray alloc] init];
        }
        if(!self.TagWordsE||![self.TagWordsE isKindOfClass:[NSMutableArray class]]){
            self.TagWordsE =[[NSMutableArray alloc] init];
        }
    }
    return self;
}

-(void)StoreAllArrayToiDrive
{
    NSUbiquitousKeyValueStore *ukvs = [NSUbiquitousKeyValueStore defaultStore];
    [ukvs setArray:self.TagWordsA forKey:@"TagWordsA_Array"];
    [ukvs setArray:[self.TagWordsB copy] forKey:@"TagWordsB"];
    [ukvs setArray:self.TagWordsC forKey:@"TagWordsC"];
    [ukvs setArray:self.TagWordsD forKey:@"TagWordsD"];
    [ukvs setArray:self.TagWordsE forKey:@"TagWordsE"];
    [ukvs synchronize];
    
}

-(void)RestoreAlliDriveToArray
{
    NSUbiquitousKeyValueStore *ukvs = [NSUbiquitousKeyValueStore defaultStore];
    

    self.TagWordsA = [NSMutableArray arrayWithArray:[ukvs arrayForKey:@"TagWordsA_Array"]];
    self.TagWordsB = [[ukvs arrayForKey:@"TagWordsB"] mutableCopy];
    self.TagWordsC = [[ukvs arrayForKey:@"TagWordsC"] mutableCopy];
    self.TagWordsD = [[ukvs arrayForKey:@"TagWordsD"] mutableCopy];
    self.TagWordsE = [[ukvs arrayForKey:@"TagWordsE"] mutableCopy];
    
}

-(void)SaveToTagA:(NSString *)string
{
    [self.TagWordsA addObject:string];
    [self StoreAllArrayToiDrive];
}
-(void)SaveToTagB:(NSString *)string
{
    [self.TagWordsB addObject:string];
    [self StoreAllArrayToiDrive];
}
-(void)SaveToTagC:(NSString *)string
{
    [self.TagWordsC addObject:string];
    [self StoreAllArrayToiDrive];
}
-(void)SaveToTagD:(NSString *)string
{
    [self.TagWordsD addObject:string];
    [self StoreAllArrayToiDrive];
}
-(void)SaveToTagE:(NSString *)string
{
    [self.TagWordsE addObject:string];
    [self StoreAllArrayToiDrive];
}

@end
