//
//  BrainStormingFirstViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "BrainStormingFirstViewController.h"

@interface BrainStormingFirstViewController ()

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

-(void)SetUpUserInterfaceGeneralModel
{
    NSString *model=[[UIDevice currentDevice] model];
    if([model isEqualToString:@"iPhone"]){
        //iPhone
    }
}

-(void)SetUpAtViewDidLoadUsingUILabelToOutputWord
//UILabelを単語をアウトプットするのに使用する時にViewDidLoadで呼び出されるルーチン
{
    int ScreenHeight = [[UIScreen mainScreen] bounds].size.height;
    int ScreenWidth  = [[UIScreen mainScreen] bounds].size.width;
    if(ScreenHeight == 1024&&ScreenWidth == 768){
           //iPad mini,iPad2 ,iPadのサイズ
        
    }else if(ScreenHeight == 2048&&ScreenWidth == 1536){
        //iPad Retina
    }else if(ScreenHeight == 480 && ScreenWidth == 320){
        //
    }
    
    if([[UIScreen mainScreen] bounds].size.height > 480){  //iPhone 5以降の画面サイズの場合
        //[self SetUpAtViewDidLoadUsingUILabelToOutputWord_SizeOfiPhone5];
    }else{//iPhone 4S以前の画面サイズの場合
        //[self SetUpAtViewDidLoadUsingUILabelToOutputWord_SizeOfiPhone4S];
    }
    
    
    
}



@end
