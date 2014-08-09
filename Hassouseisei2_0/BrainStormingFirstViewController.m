//
//  BrainStormingFirstViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "BrainStormingFirstViewController.h"

@interface BrainStormingFirstViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

@implementation BrainStormingFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if(toInterfaceOrientation == UIInterfaceOrientationPortrait){
        NSLog(@"縦(ホームボタン下)");
        self.myScrollView.frame.size.height;
    }
    else if(toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown){
        NSLog(@"縦(ホームボタン上)");
    }
    else if(toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft){
        NSLog(@"縦(ホームボタン右)");
    }
    else if(toInterfaceOrientation == UIInterfaceOrientationLandscapeRight){
        NSLog(@"縦(ホームボタン左)");
    }
}





@end
