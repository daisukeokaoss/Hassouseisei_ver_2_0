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
    }else if(ScreenHeight == 960 && ScreenWidth == 640){
        //iPhone 4,iPhone 4S
    }else if(ScreenHeight == 1136 && ScreenWidth == 640){
        //iPhone 5,iPhone 5S
    }else{
        //それ以外の機種
    }
}

-(void)setUpViewDidLoad_iPhone5
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
    [[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.75 alpha:1.0] forState:UIControlStateDisabled];
    [[QBFlatButton appearance] setFaceColor:[UIColor colorWithWhite:0.55 alpha:1.0] forState:UIControlStateDisabled];
    
    self.genereteButton = [QBFlatButton buttonWithType:UIButtonTypeCustom];
    self.genereteButton.frame = CGRectMake(20, 400, 270, 90);
    self.genereteButton.faceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.radius = 6.0;
    self.genereteButton.margin = 7.0;
    self.genereteButton.depth  = 6.0;
    
    [self.genereteButton addTarget:self action:@selector(generateButton_touchDown:)
                  forControlEvents:UIControlEventTouchDown];
    
    [contentView addSubview:self.genereteButton];
    
    
    
    //以上、QBFlatButtonを設定した
    /////////////////////////////////////////////////////////////////////////////
    
    [self addSubview:contentView];
    
    
    [self InitializeUserInterface];
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
