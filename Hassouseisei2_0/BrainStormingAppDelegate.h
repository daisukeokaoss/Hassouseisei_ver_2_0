//
//  BrainStormingAppDelegate.h
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import <UIKit/UIKit.h>


//以下、ユーザーインクルード
#import "GlobalSetting.h"
#import "StoreTagWordToiDrive.h"


typedef enum{
    WordsA,
    WordsB,
    WordsC,
    WordsD,
    WordsE
}SelectedWords;

@interface BrainStormingAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (strong,nonatomic) GlobalSetting *globalSetting;

@property (strong,nonatomic) StoreTagWordToiDrive *tagToiDrive;

@property (nonatomic) SelectedWords words_select;

@end
