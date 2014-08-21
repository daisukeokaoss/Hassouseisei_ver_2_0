//
//  WordSelectionPlotScrollView_iPad.h
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/20.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WordSelectionPlotScrollView_iPad : UIScrollView

-(void)BuildUserInterfaceWithCGSize:(CGSize)size;

-(void)dataStructureFromUI;
-(void)NSUserDefaultsFromUI;
-(void)UI_FromNSUserDefaults;

-(void)WordPoolChanged;
@end
