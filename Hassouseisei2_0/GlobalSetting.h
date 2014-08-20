//
//  GlobalSetting.h
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/20.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import <Foundation/Foundation.h>


#define BIOLOGICALWORDGENERATE "BiologicalWordGenerate"
#define CHEMICALWORDGENERATE "ChemicalWordGenerate"
#define ITWORDGENERATE       "ITWordGenerate"


@interface GlobalSetting : NSObject
extern NSString * const  BiologicalWordGenerateString;
extern NSString * const  ChemicalWordGenerateString;
extern NSString * const  ITWordGenerateStringString;
extern NSString * const  ModernSocialWordGenerateString;
extern NSString * const  OpticalWordGenerateString;
extern NSString * const  PhysicalWordGenerateString;
extern NSString * const  ElementaryWordGenerateString;




@property (nonatomic) bool BiologicalWordGenerate;
@property (nonatomic) bool ChemicalWordGenerate;
@property (nonatomic) bool ITWordGenerate;
@property (nonatomic) bool ModernSocialWordGenerate;
@property (nonatomic) bool OpticalWordGenerate;
@property (nonatomic) bool PhysicalWordGenerate;
@property (nonatomic) bool ElementaryWordGenerate;


@property (nonatomic) int NumberOfGenerateWord;

@end
