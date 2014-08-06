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

-(void)SetUpUserInterface_iPadMini_iPad2
{
    
}

-(void)SetUpUserInterface_iPadRetina
{
    
}

-(void)SetUpUserInterface_iPhone3_iPhone3S
{
    
}

-(void)SetUpUserInterface_iPhone4_iPhone4S
{
    
}

-(void)SetUpUsetInterface_iPhone5_iPhone5S
{
    
}

-(void)SetUpUserInterface_OtherDevice
{
    
}



-(void)SetUpUserInterface
//UILabelを単語をアウトプットするのに使用する時にViewDidLoadで呼び出されるルーチン
{
    int ScreenHeight = [[UIScreen mainScreen] bounds].size.height;
    int ScreenWidth  = [[UIScreen mainScreen] bounds].size.width;
    if(ScreenHeight == 1024&&ScreenWidth == 768){
           //iPad mini,iPad2 ,iPadのサイズ
        
    }else if(ScreenHeight == 2048&&ScreenWidth == 1536){
        //iPad Retina
    }else if(ScreenHeight == 480 && ScreenWidth == 320){
        //iPhone 3,iPhone 3S
    }else if(ScreenHeight == 960 && ScreenWidth == 640){
        //iPhone 4,iPhone 4S
    }else if(ScreenHeight == 1136 && ScreenWidth == 640){
        //iPhone 5,iPhone 5S
    }else{
        //それ以外の機種
    }
    
    if([[UIScreen mainScreen] bounds].size.height > 480){  //iPhone 5以降の画面サイズの場合
        //[self SetUpAtViewDidLoadUsingUILabelToOutputWord_SizeOfiPhone5];
    }else{//iPhone 4S以前の画面サイズの場合
        //[self SetUpAtViewDidLoadUsingUILabelToOutputWord_SizeOfiPhone4S];
    }
    
    
    
}



@end
