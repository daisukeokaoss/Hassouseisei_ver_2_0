//
//  StoreTagWordToiDrive.h
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/10/02.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreTagWordToiDrive : NSObject

-(void)SaveToTagA:(NSString *)string;
-(void)SaveToTagB:(NSString *)string;
-(void)SaveToTagC:(NSString *)string;
-(void)SaveToTagD:(NSString *)string;
-(void)SaveToTagE:(NSString *)string;

@property (nonatomic,strong) NSMutableArray *TagWordsA;
@property (nonatomic,strong) NSMutableArray *TagWordsB;
@property (nonatomic,strong) NSMutableArray *TagWordsC;
@property (nonatomic,strong) NSMutableArray *TagWordsD;
@property (nonatomic,strong) NSMutableArray *TagWordsE;




@end
