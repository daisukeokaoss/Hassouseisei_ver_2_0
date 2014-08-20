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

@implementation GlobalSetting


-(void)dataStructureFromUserDefault
{
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    self.BiologicalWordGenerate = [ud boolForKey:BiologicalWordGenerateString];
    self.ChemicalWordGenerate   = [ud boolForKey:ChemicalWordGenerateString];
    self.ITWordGenerate         = [ud boolForKey:ITWordGenerateStringString];
    self.ModernSocialWordGenerate = [ud boolForKey:ModernSocialWordGenerateString];
    self.OpticalWordGenerate      = [ud boolForKey:OpticalWordGenerateString];
    self.PhysicalWordGenerate     = [ud boolForKey:PhysicalWordGenerateString];
    self.ElementaryWordGenerate   = [ud boolForKey:ElementaryWordGenerateString];
    
    
}



@end
