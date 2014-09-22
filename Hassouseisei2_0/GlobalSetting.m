//
//  GlobalSetting.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/20.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "GlobalSetting.h"


NSString *const BiologicalWordGenerateString = @"BiologicalWordGenerateString";
NSString * const  ChemicalWordGenerateString = @"ChemicalWordGenerateString";
NSString * const  ITWordGenerateStringString = @"ITWordGenerateString";
NSString * const  ModernSocialWordGenerateString = @"ModernSocialWordGenerate";
NSString * const  OpticalWordGenerateString = @"OpticalWordGenerateString";
NSString * const  PhysicalWordGenerateString =@"PhysicalWordGenerateString";
NSString * const  ElementaryWordGenerateString = @"ElementaryWordGenerateString";
NSString * const  WorldHistoryWordGenerateString = @"WorldHistoryWordGenerateString";
NSString * const  MedicalWordGenerateString = @"MedicalWordGenerateString";

NSString * const  NumberOfGenerateWordString = @"NumberOfGenerateWordString";

@implementation GlobalSetting


-(void)dataStructureFromUserDefault
{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    NSMutableDictionary *defaults = [NSMutableDictionary dictionary];
    [defaults setObject:@(YES) forKey:BiologicalWordGenerateString];
    [defaults setObject:@(YES) forKey:ChemicalWordGenerateString];
    [defaults setObject:@(YES) forKey:ITWordGenerateStringString];
    [defaults setObject:@(YES) forKey:ModernSocialWordGenerateString];
    [defaults setObject:@(YES) forKey:OpticalWordGenerateString];
    [defaults setObject:@(YES) forKey:PhysicalWordGenerateString];
    [defaults setObject:@(YES) forKey:ElementaryWordGenerateString];
    [defaults setObject:@(YES) forKey:WorldHistoryWordGenerateString];
    [defaults setObject:@(YES) forKey:MedicalWordGenerateString];
    
    [defaults setObject:@(7) forKey:NumberOfGenerateWordString];

    [ud registerDefaults:defaults];
    
    
    
    
    self.BiologicalWordGenerate = [ud boolForKey:BiologicalWordGenerateString];
    self.ChemicalWordGenerate   = [ud boolForKey:ChemicalWordGenerateString];
    self.ITWordGenerate         = [ud boolForKey:ITWordGenerateStringString];
    self.ModernSocialWordGenerate = [ud boolForKey:ModernSocialWordGenerateString];
    self.OpticalWordGenerate      = [ud boolForKey:OpticalWordGenerateString];
    self.PhysicalWordGenerate     = [ud boolForKey:PhysicalWordGenerateString];
    self.ElementaryWordGenerate   = [ud boolForKey:ElementaryWordGenerateString];
    self.WorldHistoryWordGenerate = [ud boolForKey:WorldHistoryWordGenerateString];
    self.MedicalWordGenerate      = [ud boolForKey:MedicalWordGenerateString];
    
    self.NumberOfGenerateWord     = (int)[ud integerForKey:NumberOfGenerateWordString];
    
    
}

-(void)StoreUserDefaultFromDataStructure
{
     NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:self.BiologicalWordGenerate forKey:BiologicalWordGenerateString];
    [ud setBool:self.ChemicalWordGenerate forKey:ChemicalWordGenerateString];
    [ud setBool:self.ITWordGenerate forKey:ITWordGenerateStringString];
    [ud setBool:self.ModernSocialWordGenerate forKey:ModernSocialWordGenerateString];
    [ud setBool:self.OpticalWordGenerate forKey:OpticalWordGenerateString];
    [ud setBool:self.PhysicalWordGenerate forKey:PhysicalWordGenerateString];
    [ud setBool:self.ElementaryWordGenerate forKey:ElementaryWordGenerateString];
    [ud setBool:self.WorldHistoryWordGenerate forKey:WorldHistoryWordGenerateString];
    [ud setBool:self.MedicalWordGenerate forKey:MedicalWordGenerateString];
    
    [ud setInteger:self.NumberOfGenerateWord forKey:NumberOfGenerateWordString];
    
    [ud synchronize];
}



@end
