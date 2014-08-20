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

@interface BrainStormingAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (strong,nonatomic) GlobalSetting *globalSetting;

@end
