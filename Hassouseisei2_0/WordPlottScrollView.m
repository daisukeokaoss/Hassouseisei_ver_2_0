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
#import "WordSetControl.h"

#import "SearchViewController.h"


@interface WordPlottScrollView()
@property (strong, nonatomic)  UILabel *FirstWordLabel;
@property (strong, nonatomic)  UILabel *SecondWordLabel;
@property (strong, nonatomic)  UILabel *ThirdWordLabel;
@property (strong, nonatomic)  UILabel *FourthWordLabel;
@property (strong, nonatomic)  UILabel *FifthWordLabel;
@property (strong, nonatomic)  UILabel *SixthWordLabel;


@property (strong, nonatomic)  UILabel *SeventhWordLabel;

//@property (strong,nonatomic) UIViewController *mainViewController;

@property (strong,nonatomic) QBFlatButton *genereteButton;

-(void)SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:(int)ScrollView_height Width:(int)ScrollView_width;

@end


@implementation WordPlottScrollView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.userInteractionEnabled = true;
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



-(void)SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:(int)ScrollView_height Width:(int)ScrollView_width
{
    //[self DeleteUserInterface];
    
    //  [self setContentSize:CGSizeMake(ScrollView_width, ScrollView_height)];
    //[self setBounds:CGRectMake(0, 0, ScrollView_width, ScrollView_height)];
    // [self setFrame:CGRectMake(0, 0, ScrollView_width, ScrollView_height)];
    
    int Label_XCoodinateOffset = (int)(ScrollView_width*(30.0/430.0));  //=768(30/430)WordLabelの左端からの距離
    int FirstLabel_YCoodinateOffset = (int)(ScrollView_height*(50.0/480.0)); //975(50/480)最初のWordLabelの上からの距離
    int Label_Interval_YCoordinate = (int)(ScrollView_height*(40.0/480.0));
    int Label_Height = 21;
    int Label_Width = (int)(ScrollView_width*(400.0/480));
    
    self.FirstWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset,
                                                                    FirstLabel_YCoodinateOffset, Label_Width, Label_Height)];
    
    self.SecondWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset,
                                                                     FirstLabel_YCoodinateOffset+Label_Interval_YCoordinate,
                                                                     Label_Width, Label_Height)];
    
    self.ThirdWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset,
                                                                    FirstLabel_YCoodinateOffset + Label_Interval_YCoordinate*2,
                                                                    Label_Width , Label_Height)];
    self.FourthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset,
                                                                     FirstLabel_YCoodinateOffset + Label_Interval_YCoordinate*3,
                                                                     Label_Width, Label_Height)];
    self.FifthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset,
                                                                    FirstLabel_YCoodinateOffset + Label_Interval_YCoordinate *4,
                                                                    Label_Width, Label_Height)];
    self.SixthWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset,
                                                                    FirstLabel_YCoodinateOffset + Label_Interval_YCoordinate * 5,
                                                                    Label_Width, Label_Height)];
    self.SeventhWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(Label_XCoodinateOffset,
                                                                      FirstLabel_YCoodinateOffset + Label_Interval_YCoordinate * 6,
                                                                      Label_Width, Label_Height)];
    
    
    
    
    [self.FirstWordLabel setText:@""];
    [self.SecondWordLabel setText:@""];
    [self.ThirdWordLabel setText:@""];
    [self.FourthWordLabel setText:@""];
    [self.FifthWordLabel setText:@""];
    [self.SixthWordLabel setText:@""];
    [self.SeventhWordLabel setText:@""];
    
    
    [self TestInput];
    
    
    
    [self addSubview:self.FirstWordLabel];
    [self addSubview:self.SecondWordLabel];
    [self addSubview:self.ThirdWordLabel];
    [self addSubview:self.FourthWordLabel];
    [self addSubview:self.FifthWordLabel];
    [self addSubview:self.SixthWordLabel];
    [self addSubview:self.SeventhWordLabel];
    
    
    
    int QBFlatButton_XCoordinateOffset = Label_XCoodinateOffset;
    int QBFlatButton_YCoordinateOffset = (int)(ScrollView_height*(300.0/430.0));
    int QBFlatButton_Width             = ScrollView_width - Label_XCoodinateOffset*2;
    int QBFlatButton_Height            = (int)(ScrollView_height *(80.0/430));
    
    self.genereteButton = [[QBFlatButton alloc] initWithFrame:CGRectMake(QBFlatButton_XCoordinateOffset,QBFlatButton_YCoordinateOffset,
                                                                         QBFlatButton_Width , QBFlatButton_Height)];
    
    
    self.genereteButton.surfaceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.cornerRadius = 6.0;
    self.genereteButton.height = 7.0;
    
    self.genereteButton.depth  = 6.0;
    [self.genereteButton setTitle:@"Push" forState:UIControlStateNormal];
    
    
    
    [self addSubview:self.genereteButton];
    
     [self.genereteButton addTarget:self action:@selector(generateButton_touchDown)
             forControlEvents:UIControlEventTouchDown];
    
    [self generateButton_touchDown];
    
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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self nextResponder] touchesBegan:touches withEvent:event];
    [self setContentOffset:CGPointMake(0.0f, 0.0f) animated:YES];
    
    
    UITouch *touch = [[event allTouches]anyObject];
    if(touch.view.tag == self.FirstWordLabel.tag){
        [self WordLavelClick:self.FirstWordLabel];
    }else if(touch.view.tag == self.SecondWordLabel.tag){
        [self WordLavelClick:self.SecondWordLabel];
    }else if(touch.view.tag == self.ThirdWordLabel.tag){
        [self WordLavelClick:self.ThirdWordLabel];
    }else if(touch.view.tag == self.FourthWordLabel.tag){
        [self WordLavelClick:self.FourthWordLabel];
    }else if(touch.view.tag == self.FifthWordLabel.tag){
        [self WordLavelClick:self.FifthWordLabel];
    }else if(touch.view.tag == self.SixthWordLabel.tag){
        [self WordLavelClick:self.SixthWordLabel];
    }else if(touch.view.tag == self.SeventhWordLabel.tag){
        [self WordLavelClick:self.SeventhWordLabel];
    }else {
        
    }
    
}

-(void)WordLavelClick:(UILabel*)sender
{
    if([sender.text isEqual: @""]){
        return;
    }
    
    SearchViewController* ViewController = [[SearchViewController alloc] init];
    ViewController.SearchString = sender.text;
    ViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //アニメーションを有効にしてビューを表示します。
    [self.mainViewController presentViewController: ViewController animated:YES completion: nil];
    
    
}

-(void)generateButton_touchDown
{
    WordSetControl *wordPool = [[WordSetControl alloc] init];
    [wordPool PrepareForArray];
    
    BrainStormingAppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    GlobalSetting *setting = appdelegate.globalSetting;
    
    NSMutableArray *WordArray = [[NSMutableArray alloc] init];
    
    int GenerateWordCount =7;
    for(int i=0;i<GenerateWordCount;i++){
        bool flag=true;
        do{
            NSString *oneWord = [wordPool OutputOneWord_afterPrepareForArray];
            [WordArray addObject:oneWord];
            for(int j=0;j<i;j++){
                if([WordArray[j] isEqualToString:oneWord]){
                    flag =false;
                }
            }
        }while(flag == false);
    }
    if(setting.NumberOfGenerateWord == 2){
        //生成ワード２個
        [self.FirstWordLabel setText:WordArray[0]];
        [self.SecondWordLabel setText:WordArray[1]];
        [self.ThirdWordLabel setText:@""];
        [self.FourthWordLabel setText:@""];
        [self.FifthWordLabel setText:@""];
        [self.SixthWordLabel setText:@""];
        [self.SeventhWordLabel setText:@""];
        
    }else if(setting.NumberOfGenerateWord == 3){
        //生成ワード３個
        [self.FirstWordLabel setText:WordArray[0]];
        [self.SecondWordLabel setText:WordArray[1]];
        [self.ThirdWordLabel setText:WordArray[2]];
        [self.FourthWordLabel setText:@""];
        [self.FifthWordLabel setText:@""];
        [self.SixthWordLabel setText:@""];
        [self.SeventhWordLabel setText:@""];
    }else if(setting.NumberOfGenerateWord == 4){
        //生成ワード４個
        [self.FirstWordLabel setText:WordArray[0]];
        [self.SecondWordLabel setText:WordArray[1]];
        [self.ThirdWordLabel setText:WordArray[2]];
        [self.FourthWordLabel setText:WordArray[3]];
        [self.FifthWordLabel setText:@""];
        [self.SixthWordLabel setText:@""];
        [self.SeventhWordLabel setText:@""];
    }else if(setting.NumberOfGenerateWord == 5){
        //生成ワード５個
        [self.FirstWordLabel setText:WordArray[0]];
        [self.SecondWordLabel setText:WordArray[1]];
        [self.ThirdWordLabel setText:WordArray[2]];
        [self.FourthWordLabel setText:WordArray[3]];
        [self.FifthWordLabel setText:WordArray[4]];
        [self.SixthWordLabel setText:@""];
        [self.SeventhWordLabel setText:@""];
    }else if(setting.NumberOfGenerateWord == 6){
        //生成ワード６個
        [self.FirstWordLabel setText:WordArray[0]];
        [self.SecondWordLabel setText:WordArray[1]];
        [self.ThirdWordLabel setText:WordArray[2]];
        [self.FourthWordLabel setText:WordArray[3]];
        [self.FifthWordLabel setText:WordArray[4]];
        [self.SixthWordLabel setText:WordArray[5]];
        [self.SeventhWordLabel setText:@""];
    }else if(setting.NumberOfGenerateWord == 7){
        //生成ワード７個
        [self.FirstWordLabel setText:WordArray[0]];
        [self.SecondWordLabel setText:WordArray[1]];
        [self.ThirdWordLabel setText:WordArray[2]];
        [self.FourthWordLabel setText:WordArray[3]];
        [self.FifthWordLabel setText:WordArray[4]];
        [self.SixthWordLabel setText:WordArray[5]];
        [self.SeventhWordLabel setText:WordArray[6]];
    }
    int MaxWidth =0;
    if([self.FirstWordLabel sizeThatFits:CGSizeMake(1000,500)].width > MaxWidth){
        MaxWidth = [self.FirstWordLabel sizeThatFits:CGSizeMake(1000,500)].width;
    }
    if([self.SecondWordLabel sizeThatFits:CGSizeMake(1000,500)].width > MaxWidth){
        MaxWidth = [self.SecondWordLabel sizeThatFits:CGSizeMake(1000,500)].width;
    }
    if([self.ThirdWordLabel sizeThatFits:CGSizeMake(1000,500)].width > MaxWidth){
        MaxWidth = [self.ThirdWordLabel sizeThatFits:CGSizeMake(1000,500)].width;
    }
    if([self.FourthWordLabel sizeThatFits:CGSizeMake(1000,500)].width > MaxWidth){
        MaxWidth = [self.FourthWordLabel sizeThatFits:CGSizeMake(1000,500)].width;
    }
    if([self.SixthWordLabel sizeThatFits:CGSizeMake(1000,500)].width > MaxWidth){
        MaxWidth = [self.SixthWordLabel sizeThatFits:CGSizeMake(1000,500)].width;
    }
    if([self.SeventhWordLabel sizeThatFits:CGSizeMake(1000,500)].width > MaxWidth){
        MaxWidth = [self.SeventhWordLabel sizeThatFits:CGSizeMake(1000,500)].width;
    }
    if(self.FirstWordLabel.frame.origin.x +MaxWidth > self.contentSize.width){
        [self setContentSize:CGSizeMake(self.FirstWordLabel.frame.origin.x +MaxWidth,self.bounds.size.height)];
    }else{
        [self setContentSize:CGSizeMake(self.bounds.size.width,self.bounds.size.height)];
    }
    
    [self.FirstWordLabel sizeToFit];
    [self.SecondWordLabel sizeToFit];
    [self.ThirdWordLabel sizeToFit];
    [self.FourthWordLabel sizeToFit];
    [self.FifthWordLabel sizeToFit];
    [self.SixthWordLabel sizeToFit];
    [self.SeventhWordLabel sizeToFit];
    
}

-(void)TestInput
{
    [self.FirstWordLabel setText:@"aaa"];
    [self.SecondWordLabel setText:@"aaa"];
    [self.ThirdWordLabel setText:@"aaa"];
    [self.FourthWordLabel setText:@"aaa"];
    [self.FifthWordLabel setText:@"aaa"];
    [self.SixthWordLabel setText:@"aaa"];
    [self.SeventhWordLabel setText:@"aaa"];
    
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

-(void)SetUpUserInterface
//UILabelを単語をアウトプットするのに使用する時にViewDidLoadで呼び出されるルーチン
{
    int ScreenHeight = [[UIScreen mainScreen] bounds].size.height;
    int ScreenWidth  = [[UIScreen mainScreen] bounds].size.width;
    if(ScreenHeight == 1024&&ScreenWidth == 768){
        //iPad mini,iPad2 ,iPadのサイズ
        [self SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:1024 Width:768];
        
        
    }else if(ScreenHeight == 2048&&ScreenWidth == 1536){
        //iPad Retina
        [self SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:2048 Width:1536];
    }else if(ScreenHeight == 480 && ScreenWidth == 320){
        //iPhone 3,iPhone 3S
        //サポートされていません
        UIAlertView *alert =
        [[UIAlertView alloc]
         initWithTitle:@"終了します"
         message:@"This Device is not supported"
         delegate:nil
         cancelButtonTitle:nil
         otherButtonTitles:@"OK", nil
         ];
        
        [alert show];
        
    }else if(ScreenHeight == 960 && ScreenWidth == 640){
        //iPhone 4,iPhone 4S
        [self setUpViewDidLoad_iPhone4_iPhone4S];
    }else if(ScreenHeight == 1136 && ScreenWidth == 640){
        //iPhone 5,iPhone 5S
        [self setUpViewDidLoad_iPhone5_iPhone5S];
    }else{
        //それ以外の機種
        UIAlertView *alert =
        [[UIAlertView alloc]
         initWithTitle:@"終了します"
         message:@"This Device is not supported"
         delegate:nil
         cancelButtonTitle:nil
         otherButtonTitles:@"OK", nil
         ];
        
        [alert show];
    }
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
