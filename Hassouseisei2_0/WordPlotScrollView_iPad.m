//
//  WordPlotScrollView_iPad.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/18.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordPlotScrollView_iPad.h"


//ユーザーインポート
#import "BrainStormingAppDelegate.h"
#import "WordSetControl.h"

@interface WordPlotScrollView_iPad()
@property (strong, nonatomic)  UILabel *FirstWordLabel;
@property (strong, nonatomic)  UILabel *SecondWordLabel;
@property (strong, nonatomic)  UILabel *ThirdWordLabel;
@property (strong, nonatomic)  UILabel *FourthWordLabel;
@property (strong, nonatomic)  UILabel *FifthWordLabel;
@property (strong, nonatomic)  UILabel *SixthWordLabel;
@property (strong, nonatomic)  UILabel *SeventhWordLabel;

@property (strong,nonatomic) QBFlatButton *genereteButton;

@end


@implementation WordPlotScrollView_iPad

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)DeleteUserInterface
{
    [self.FirstWordLabel removeFromSuperview];
    [self.SecondWordLabel removeFromSuperview];
    [self.ThirdWordLabel removeFromSuperview];
    [self.FourthWordLabel removeFromSuperview];
    [self.FifthWordLabel removeFromSuperview];
    [self.SixthWordLabel removeFromSuperview];
    [self.SeventhWordLabel removeFromSuperview];
    
    [self.genereteButton removeFromSuperview];
}

-(void)SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:(int)ScrollView_height Width:(int)ScrollView_width
{
    [self DeleteUserInterface];
    
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
    
    
    //[self TestInput];
    
    
    
    [self addSubview:self.FirstWordLabel];
    [self addSubview:self.SecondWordLabel];
    [self addSubview:self.ThirdWordLabel];
    [self addSubview:self.FourthWordLabel];
    [self addSubview:self.FifthWordLabel];
    [self addSubview:self.SixthWordLabel];
    [self addSubview:self.SeventhWordLabel];
    
    
    
    int QBFlatButton_XCoordinateOffset = Label_XCoodinateOffset;
    int QBFlatButton_YCoordinateOffset = (int)(ScrollView_height*(312.0/430.0));
    int QBFlatButton_Width             = ScrollView_width - Label_XCoodinateOffset*2;
    int QBFlatButton_Height            = (int)(ScrollView_height *(90.0/430));
    
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
        [self setContentSize:CGSizeMake(self.FirstWordLabel.frame.origin.x +MaxWidth,self.contentSize.height)];
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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
