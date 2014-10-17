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


    [ukvs setObject:[NSNumber numberWithInteger:[self.TagWordsA count]] forKey:@"TagWordA_Count"];
    for(int i=0;i<self.TagWordsA.count;i++){
        [ukvs setString:(NSString *)self.TagWordsA[i] forKey:[NSString stringWithFormat:@"TagWordA_%d",i]];
    }
    
    [ukvs setObject:[NSNumber numberWithInteger:[self.TagWordsB count]] forKey:@"TagWordB_Count"];
    for(int i=0;i<self.TagWordsB.count;i++){
        [ukvs setString:(NSString *)self.TagWordsB[i] forKey:[NSString stringWithFormat:@"TagWordB_%d",i]];
    }
    
    [ukvs setObject:[NSNumber numberWithInteger:[self.TagWordsC count]] forKey:@"TagWordC_Count"];
    for(int i=0;i<self.TagWordsC.count;i++){
        [ukvs setString:(NSString *)self.TagWordsC[i] forKey:[NSString stringWithFormat:@"TagWordC_%d",i]];
    }
    
    [ukvs setObject:[NSNumber numberWithInteger:[self.TagWordsD count]] forKey:@"TagWordD_Count"];
    for(int i=0;i<self.TagWordsD.count;i++){
        [ukvs setString:(NSString *)self.TagWordsD[i] forKey:[NSString stringWithFormat:@"TagWordD_%d",i]];
    }
    
    [ukvs setObject:[NSNumber numberWithInteger:[self.TagWordsE count]] forKey:@"TagWordE_Count"];
    for(int i=0;i<self.TagWordsE.count;i++){
        [ukvs setString:(NSString *)self.TagWordsE[i] forKey:[NSString stringWithFormat:@"TagWordE_%d",i]];
    }
    bool result =[ukvs synchronize];
    
}

-(void)RestoreAlliDriveToArray
{
    
    NSUbiquitousKeyValueStore *ukvs = [NSUbiquitousKeyValueStore defaultStore];
    
    self.TagWordsA = [[NSMutableArray alloc] init];
    self.TagWordsB = [[NSMutableArray alloc] init];
    self.TagWordsC = [[NSMutableArray alloc] init];
    self.TagWordsD = [[NSMutableArray alloc] init];
    self.TagWordsE = [[NSMutableArray alloc] init];
    
    int TagWordA_Count =(int)[ukvs objectForKey:@"TagWordA_Count"];
    for(int i=0;i<TagWordA_Count;i++){
        if([ukvs stringForKey:[NSString stringWithFormat:@"TagWordA_%d",i]] == nil){
            break;
        }
        
        [self.TagWordsA addObject:[ukvs stringForKey:[NSString stringWithFormat:@"TagWordA_%d",i]]];
    }

    int TagWordB_Count =(int)[ukvs objectForKey:@"TagWordB_Count"];
    for(int i=0;i<TagWordB_Count;i++){
        if([ukvs stringForKey:[NSString stringWithFormat:@"TagWordB_%d",i]] == nil){
            break;
        }
        [self.TagWordsB addObject:[ukvs stringForKey:[NSString stringWithFormat:@"TagWordB_%d",i]]];
    }
    
    int TagWordC_Count =(int)[ukvs objectForKey:@"TagWordC_Count"];
    for(int i=0;i<TagWordC_Count;i++){
        if([ukvs stringForKey:[NSString stringWithFormat:@"TagWordC_%d",i]] == nil){
            break;
        }
        [self.TagWordsC addObject:[ukvs stringForKey:[NSString stringWithFormat:@"TagWordC_%d",i]]];
    }
    
    int TagWordD_Count =(int)[ukvs objectForKey:@"TagWordD_Count"];
    for(int i=0;i<TagWordD_Count;i++){
        if([ukvs stringForKey:[NSString stringWithFormat:@"TagWordD_%d",i]] == nil){
            break;
        }
        [self.TagWordsD addObject:[ukvs stringForKey:[NSString stringWithFormat:@"TagWordD_%d",i]]];
    }
    
    int TagWordE_Count =(int)[ukvs objectForKey:@"TagWordE_Count"];
    for(int i=0;i<TagWordE_Count;i++){
        if([ukvs stringForKey:[NSString stringWithFormat:@"TagWordE_%d",i]] == nil){
            break;
        }
        [self.TagWordsE addObject:[ukvs stringForKey:[NSString stringWithFormat:@"TagWordE_%d",i]]];
    }
}

-(void)SaveToTagA:(NSString *)string
{
    [self.TagWordsA addObject:[string copy]];
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
