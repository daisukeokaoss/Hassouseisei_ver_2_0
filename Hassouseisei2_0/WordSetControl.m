//
//  WordSetControl.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/21.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordSetControl.h"

//ユーザーインクルード
#import "BiologicalWordStore.h"
#import "ChemicalWordStore.h"
#import "ElementaryWord1.h"
#import "ITWordStore.h"
#import "ModeanSocialWord.h"
#import "OpticalWordStore.h"
#import "PhysicalWordStore.h"
#import "WorldHistoryWordStore.h"
#import "BrainStormingAppDelegate.h"

@interface WordSetControl()

@property (nonatomic,strong) NSMutableArray *WordPool_Global;

@end

@implementation WordSetControl

+(int)CountWordPool
{
    BrainStormingAppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    GlobalSetting *setting = appdelegate.globalSetting;
    
    NSMutableArray *wordPool = [[NSMutableArray alloc] init];
    
    if(setting.BiologicalWordGenerate){
        [wordPool addObjectsFromArray:[BiologicalWordStore GenerateWordArray]];
    }
    if(setting.ChemicalWordGenerate){
        [wordPool addObjectsFromArray:[BiologicalWordStore GenerateWordArray]];
    }
    if(setting.ElementaryWordGenerate){
        [wordPool addObjectsFromArray:[ElementaryWord1 GenerateWordArray]];
    }
    if(setting.ITWordGenerate){
        [wordPool addObjectsFromArray:[ITWordStore GenerateWordArray]];
    }
    if(setting.ModernSocialWordGenerate){
        [wordPool addObjectsFromArray:[ModeanSocialWord GenerateWordArray]];
    }
    if(setting.OpticalWordGenerate){
        [wordPool addObjectsFromArray:[OpticalWordStore GenerateWordArray]];
    }
    if(setting.PhysicalWordGenerate){
        [wordPool addObjectsFromArray:[PhysicalWordStore GenerateWordArray]];
    }
    if(setting.WorldHistoryWordGenerate){
        [wordPool addObjectsFromArray:[WorldHistoryWordStore GenerateWordArray]];
    }
    
    
    return [wordPool count];
}

-(void)PrepareForArray
{
    BrainStormingAppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    GlobalSetting *setting = appdelegate.globalSetting;
    
    self.WordPool_Global = [[NSMutableArray alloc] init];
    
    if(setting.BiologicalWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[BiologicalWordStore GenerateWordArray]];
    }
    if(setting.ChemicalWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[ChemicalWordStore GenerateWordArray]];
    }
    if(setting.ElementaryWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[ElementaryWord1 GenerateWordArray]];
    }
    if(setting.ITWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[ITWordStore GenerateWordArray]];
    }
    if(setting.ModernSocialWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[ModeanSocialWord GenerateWordArray]];
    }
    if(setting.OpticalWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[OpticalWordStore GenerateWordArray]];
    }
    if(setting.PhysicalWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[PhysicalWordStore GenerateWordArray]];
    }
    if(setting.WorldHistoryWordGenerate){
        [self.WordPool_Global addObjectsFromArray:[WorldHistoryWordStore GenerateWordArray]];
    }
}

-(NSString*)OutputOneWord_afterPrepareForArray
{
    if([self.WordPool_Global count] == 0){
        return @"";
    }
    
    return self.WordPool_Global[arc4random()%self.WordPool_Global.count];
}

@end
