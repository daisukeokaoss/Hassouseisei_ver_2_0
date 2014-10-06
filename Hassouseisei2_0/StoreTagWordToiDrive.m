//
//  StoreTagWordToiDrive.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/10/02.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "StoreTagWordToiDrive.h"

@interface StoreTagWordToiDrive()
@property (nonatomic,strong) NSMutableArray *TagWordsA;
@property (nonatomic,strong) NSMutableArray *TagWordsB;
@property (nonatomic,strong) NSMutableArray *TagWordsC;
@property (nonatomic,strong) NSMutableArray *TagWordsD;
@property (nonatomic,strong) NSMutableArray *TagWordsE;

@end

@implementation StoreTagWordToiDrive

-(void)StoreAllArrayToiDrive
{
    NSUbiquitousKeyValueStore *ukvs = [NSUbiquitousKeyValueStore defaultStore];
    [ukvs setObject:self.TagWordsA forKey:@"TagWordsA"];
    [ukvs setObject:self.TagWordsB forKey:@"TagWordsB"];
    [ukvs setObject:self.TagWordsC forKey:@"TagWordsC"];
    [ukvs setObject:self.TagWordsD forKey:@"TagWordsD"];
    [ukvs setObject:self.TagWordsE forKey:@"TagWordsE"];
    [ukvs synchronize];
    
}

-(void)RestoreAlliDriveToArray
{
    NSUbiquitousKeyValueStore *ukvs = [NSUbiquitousKeyValueStore defaultStore];
    self.TagWordsA = [ukvs objectForKey:@"TagWordsA"];
    self.TagWordsB = [ukvs objectForKey:@"TagWordsB"];
    self.TagWordsC = [ukvs objectForKey:@"TagWordsC"];
    self.TagWordsD = [ukvs objectForKey:@"TagWordsD"];
    self.TagWordsE = [ukvs objectForKey:@"TagWordsE"];
    
}

-(void)SaveToTagA:(NSString *)string
{
    [self.TagWordsA addObject:string];
}
-(void)SaveToTagB:(NSString *)string
{
    [self.TagWordsB addObject:string];
}
-(void)SaveToTagC:(NSString *)string
{
    [self.TagWordsC addObject:string];
}
-(void)SaveToTagD:(NSString *)string
{
    [self.TagWordsD addObject:string];
}
-(void)SaveToTagE:(NSString *)string
{
    [self.TagWordsE addObject:string];
}

@end
