//
//  BrainStormingFirstViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "BrainStormingFirstViewController.h"

//ユーザーインクルード
#import "WordPlottScrollView.h"
#import "WordPlotScrollView_iPad.h"

@interface BrainStormingFirstViewController ()

@property (weak, nonatomic) IBOutlet WordPlottScrollView *myScrollView;




@end

@implementation BrainStormingFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setUserInterface];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUserInterface
{
    int ViewHeight = self.view.bounds.size.height;
    int ViewWidth  = self.view.bounds.size.width;
    int ClientHeight = ViewHeight;
    int ClientWidth  = ViewWidth;
    [self.myScrollView setFrame:CGRectMake(0, 0, ClientWidth, ClientHeight)];
    
    [self.myScrollView SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:ClientHeight Width:ClientWidth];
    //  [self SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:ClientHeight Width:ClientWidth];
}







@end
