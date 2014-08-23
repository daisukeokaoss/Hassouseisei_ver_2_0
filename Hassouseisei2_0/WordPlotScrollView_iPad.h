//
//  WordPlotScrollView_iPad.h
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/18.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import <UIKit/UIKit.h>

//ユーザーインクルード
#import "QBFlatButton.h"

@interface WordPlotScrollView_iPad : UIScrollView

@property (strong,nonatomic) UIViewController *mainViewController;



-(void)SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:(int)ScrollView_height Width:(int)ScrollView_width;

@end
