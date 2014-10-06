//
//  WordSelectionPlotScrollView_iPhone.h
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/19.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WordSelectionPlotScrollView_iPhone : UIScrollView

-(void)BuildUserInterfaceWithCGSize:(CGSize)size;

-(void)UI_FromNSUserDefaults;

-(void)NSUserDefaultsFromUI;

-(void)dataStructureFromUI;

-(void)WordPoolChanged;

@property (nonatomic,strong) UIViewController *SuperViewController;

//@property (strong,nonatomic) UIViewController *mainViewController;
@property (strong,nonatomic) UIViewController *mainViewController;

@end
