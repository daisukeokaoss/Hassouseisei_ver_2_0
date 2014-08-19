//
//  BrainStormingSecondViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "BrainStormingSecondViewController.h"


//ユーザーインクルード
#include "WordSelectionPlotScrollView_iPhone.h"

@interface BrainStormingSecondViewController ()
@property (weak, nonatomic) IBOutlet WordSelectionPlotScrollView_iPhone *myScrollView;


@end

@implementation BrainStormingSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGSize size = [[UIScreen mainScreen] bounds].size;
    CGSize WordSelectionScrollViewSize;
    CGRect WordSelectionScrollViewFrame;
    
    if(size.height == 568.0 &&size.width == 320.0){
        WordSelectionScrollViewSize = CGSizeMake(320.0,519.0);
        WordSelectionScrollViewFrame = CGRectMake(0, 0, 320.0, 512.0);
       
    }else {
        WordSelectionScrollViewSize = CGSizeMake(320.0,431.0);
        WordSelectionScrollViewFrame = CGRectMake(0, 0, 320.0, 431.0);
        
    }
    
    
    [self.myScrollView setFrame:WordSelectionScrollViewFrame];
    [self.myScrollView BuildUserInterfaceWithCGSize:WordSelectionScrollViewSize];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
