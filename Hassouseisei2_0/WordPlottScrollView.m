//
//  WordPlottScrollView.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordPlottScrollView.h"

//ユーザーインポート
#import "QBFlatButton.h"
#import "BrainStormingAppDelegate.h"


@interface WordPlottScrollView()
@property (strong, nonatomic)  UILabel *FirstWordLabel;
@property (strong, nonatomic)  UILabel *SecondWordLabel;
@property (strong, nonatomic)  UILabel *ThirdWordLabel;
@property (strong, nonatomic)  UILabel *FourthWordLabel;
@property (strong, nonatomic)  UILabel *FifthWordLabel;
@property (strong, nonatomic)  UILabel *SixthWordLabel;


@property (strong, nonatomic)  UILabel *SeventhWordLabel;

@property (strong,nonatomic) UIViewController *mainViewController;

@property (strong,nonatomic) QBFlatButton *genereteButton;

@end


@implementation WordPlottScrollView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
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
        //サポートされていません
        
    }else if(ScreenHeight == 960 && ScreenWidth == 640){
        //iPhone 4,iPhone 4S
    }else if(ScreenHeight == 1136 && ScreenWidth == 640){
        //iPhone 5,iPhone 5S
    }else{
        //それ以外の機種
    }
}

-(void)GenerateLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:(int)ScrollView_height Width:(int)ScrollView_width
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScrollView_width, ScrollView_height)];
    self.contentSize = CGSizeMake(ScrollView_width, ScrollView_height);
    
    int Label_XCoodinateOffset = (int)(ScrollView_width*(30.0/430.0));  //=768(30/430)WordLabelの左端からの距離
    int FirstLabel_YCoodinateOffset = (int)(ScrollView_height*(50.0/480.0)); //975(50/480)最初のWordLabelの上からの距離
    int Label_Interval_YCoordinate = (int)(ScrollView_height*(40.0/480.0));
    int Label_Height = 21;
    int Label_Width = (int)(ScrollView_width*(400.0/480));
    
    self.FirstWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset, FirstLabel_YCoodinateOffset, Label_Width, Label_Height)];
    self.SecondWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset, FirstLabel_YCoodinateOffset+Label_Interval_YCoordinate,
                                                                     Label_Width, Label_Height)];
}

-(void)setUpViewDidLoad_iPadRetina_UIInterfaceOrientationPortorait
{

    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 768, 975)];
    self.contentSize = CGSizeMake(768, 975);
    
    //ここから作りかけ
    
    self.FirstWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 400, 21)];
    self.SecondWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,90,400, 21)];
    self.ThirdWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,130, 400,21)];
    self.FourthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(50,170,400,21)];
    self.FifthWordLabel= [[UILabel alloc] initWithFrame:CGRectMake(50,210,400,21)];
    self.SixthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(40,250,400,21)];
    self.SeventhWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 290, 400, 21)];
    
   /* self.FirstWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 50, 400, 21)];
    self.SecondWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,90,400, 21)];
    self.ThirdWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,130, 400,21)];
    self.FourthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,170,400,21)];
    self.FifthWordLabel= [[UILabel alloc] initWithFrame:CGRectMake(30,210,400,21)];
    self.SixthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,250,400,21)];
    self.SeventhWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 290, 400, 21)];*/
    
    self.FirstWordLabel.text = @"";
    self.SecondWordLabel.text = @"";
    self.ThirdWordLabel.text = @"";
    self.FourthWordLabel.text = @"";
    self.FifthWordLabel.text = @"";
    self.SixthWordLabel.text = @"";
    self.SeventhWordLabel.text = @"";
    [contentView addSubview:self.FirstWordLabel];
    [contentView addSubview:self.SecondWordLabel];
    [contentView addSubview:self.ThirdWordLabel];
    [contentView addSubview:self.FourthWordLabel];
    [contentView addSubview:self.FifthWordLabel];
    [contentView addSubview:self.SixthWordLabel];
    [contentView addSubview:self.SeventhWordLabel];
    
    /////////////////////////////////////////////////////////////////////////////
    //以下、QBFlatButtonを設定する
    //[[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.75 alpha:1.0] forState:UIControlStateDisabled];
    //[[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.55 alpha:1.0] forState:UIControlStateDisabled];
    
    self.genereteButton = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    self.genereteButton.frame = CGRectMake(20, 312, 270, 90);
    self.genereteButton.surfaceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.cornerRadius = 6.0;
    //self.genereteButton.margin = 7.0;
    self.genereteButton.depth  = 6.0;
    
    [self.genereteButton addTarget:self action:@selector(generateButton_touchDown:)
                  forControlEvents:UIControlEventTouchDown];
    
    [contentView addSubview:self.genereteButton];
    
    
    
    //以上、QBFlatButtonを設定した
    /////////////////////////////////////////////////////////////////////////////
    
    [self addSubview:contentView];
    
    
    [self InitializeUserInterface];
    
}

-(void)setUpViewDidLoad_iPadRetina_UIInterfaceOrientationUpsideDown
{
    
}

-(void)setUpViewDidLoad_iPadRetina_LandscapeLeft
{
    
}

-(void)setUpViewDidLoad_iPadRetina_LandscapeRight
{
    
}

-(void)setUpViewDidLoad_iPadRetina
{
    if(self.window.rootViewController.interfaceOrientation == UIInterfaceOrientationPortrait){
        [self setUpViewDidLoad_iPadRetina_UIInterfaceOrientationPortorait];
    }else if(self.window.rootViewController.interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown){
        [self setUpViewDidLoad_iPadRetina_UIInterfaceOrientationUpsideDown];
    }else if(self.window.rootViewController.interfaceOrientation == UIInterfaceOrientationLandscapeLeft){
        [self setUpViewDidLoad_iPadRetina_LandscapeLeft];
    }else if(self.window.rootViewController.interfaceOrientation == UIInterfaceOrientationLandscapeRight){
        [self setUpViewDidLoad_iPadRetina_LandscapeRight];
    }
}

-(void)setUpViewDidLoad_iPhone4_iPhone4S
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 430, 480)];
    self.contentSize = CGSizeMake(430, 568);
    
    self.FirstWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 50, 400, 21)];
    self.SecondWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,90,400, 21)];
    self.ThirdWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,130, 400,21)];
    self.FourthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,170,400,21)];
    self.FifthWordLabel= [[UILabel alloc] initWithFrame:CGRectMake(30,210,400,21)];
    self.SixthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,250,400,21)];
    self.SeventhWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 290, 400, 21)];
    
    self.FirstWordLabel.text = @"";
    self.SecondWordLabel.text = @"";
    self.ThirdWordLabel.text = @"";
    self.FourthWordLabel.text = @"";
    self.FifthWordLabel.text = @"";
    self.SixthWordLabel.text = @"";
    self.SeventhWordLabel.text = @"";
    [contentView addSubview:self.FirstWordLabel];
    [contentView addSubview:self.SecondWordLabel];
    [contentView addSubview:self.ThirdWordLabel];
    [contentView addSubview:self.FourthWordLabel];
    [contentView addSubview:self.FifthWordLabel];
    [contentView addSubview:self.SixthWordLabel];
    [contentView addSubview:self.SeventhWordLabel];
    
    /////////////////////////////////////////////////////////////////////////////
    //以下、QBFlatButtonを設定する
    //[[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.75 alpha:1.0] forState:UIControlStateDisabled];
    //[[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.55 alpha:1.0] forState:UIControlStateDisabled];
    
    self.genereteButton = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    self.genereteButton.frame = CGRectMake(20, 312, 270, 90);
    self.genereteButton.surfaceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.cornerRadius = 6.0;
    //self.genereteButton.margin = 7.0;
    self.genereteButton.depth  = 6.0;
    
    [self.genereteButton addTarget:self action:@selector(generateButton_touchDown:)
                  forControlEvents:UIControlEventTouchDown];
    
    [contentView addSubview:self.genereteButton];
    
    
    
    //以上、QBFlatButtonを設定した
    /////////////////////////////////////////////////////////////////////////////
    
    [self addSubview:contentView];
    
    
    [self InitializeUserInterface];
}

-(void)setUpViewDidLoad_iPhone5_iPhone5S
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 430, 568)];
    self.contentSize = CGSizeMake(430, 568);
    
    self.FirstWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 50, 400, 21)];
    self.SecondWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,105,400, 21)];
    self.ThirdWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,160, 400,21)];
    self.FourthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,215,400,21)];
    self.FifthWordLabel= [[UILabel alloc] initWithFrame:CGRectMake(30,270,400,21)];
    self.SixthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30,325,400,21)];
    self.SeventhWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 380, 400, 21)];
    
    self.FirstWordLabel.text = @"";
    self.SecondWordLabel.text = @"";
    self.ThirdWordLabel.text = @"";
    self.FourthWordLabel.text = @"";
    self.FifthWordLabel.text = @"";
    self.SixthWordLabel.text = @"";
    self.SeventhWordLabel.text = @"";
    [contentView addSubview:self.FirstWordLabel];
    [contentView addSubview:self.SecondWordLabel];
    [contentView addSubview:self.ThirdWordLabel];
    [contentView addSubview:self.FourthWordLabel];
    [contentView addSubview:self.FifthWordLabel];
    [contentView addSubview:self.SixthWordLabel];
    [contentView addSubview:self.SeventhWordLabel];
    
    /////////////////////////////////////////////////////////////////////////////
    //以下、QBFlatButtonを設定する
    
    //[[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.75 alpha:1.0] forState:UIControlStateDisabled];
    //[[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.55 alpha:1.0] forState:UIControlStateDisabled];
    
    self.genereteButton = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    self.genereteButton.frame = CGRectMake(20, 400, 270, 90);
    self.genereteButton.surfaceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.cornerRadius = 6.0;
    //self.genereteButton.margin = 7.0;
    self.genereteButton.depth  = 6.0;
    
    [self.genereteButton addTarget:self action:@selector(generateButton_touchDown:)
                  forControlEvents:UIControlEventTouchDown];
    
    [contentView addSubview:self.genereteButton];
    
    
    
    //以上、QBFlatButtonを設定した
    /////////////////////////////////////////////////////////////////////////////
    
    [self addSubview:contentView];
    
    
    [self InitializeUserInterface];
}

-(void)InitializeUserInterface
{
    self.FirstWordLabel.text = @"";
    self.SecondWordLabel.text = @"";
    self.ThirdWordLabel.text = @"";
    self.FourthWordLabel.text = @"";
    self.FifthWordLabel.text = @"";
    self.SixthWordLabel.text = @"";
    self.SeventhWordLabel.text = @"";
    //self.EightsWordLabel.text = @"";
    
    
    self.FirstWordLabel.userInteractionEnabled = YES;
    self.SecondWordLabel.userInteractionEnabled = YES;
    self.ThirdWordLabel.userInteractionEnabled = YES;
    self.FourthWordLabel.userInteractionEnabled = YES;
    self.FifthWordLabel.userInteractionEnabled = YES;
    self.SixthWordLabel.userInteractionEnabled = YES;
    self.SeventhWordLabel.userInteractionEnabled = YES;
    // self.EightsWordLabel.userInteractionEnabled = YES;
    self.genereteButton.userInteractionEnabled = YES;
    self.FirstWordLabel.tag = 101;
    self.SecondWordLabel.tag = 102;
    self.ThirdWordLabel.tag  = 103;
    self.FourthWordLabel.tag = 104;
    self.FifthWordLabel.tag  = 105;
    self.SixthWordLabel.tag  = 106;
    self.SeventhWordLabel.tag = 107;
    self.genereteButton.tag = 108;
    self.tag  = 109;
}

-(void)generateButton_touchDown:(id)sender
{
   // [self pushGenerateButton];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
