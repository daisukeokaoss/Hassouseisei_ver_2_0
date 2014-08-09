//
//  BrainStormingFirstViewController_iPad.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/09.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "BrainStormingFirstViewController_iPad.h"

//ユーザーインポート
#import "QBFlatButton.h"

@interface BrainStormingFirstViewController_iPad ()
@property (strong, nonatomic)  UILabel *FirstWordLabel;
@property (strong, nonatomic)  UILabel *SecondWordLabel;
@property (strong, nonatomic)  UILabel *ThirdWordLabel;
@property (strong, nonatomic)  UILabel *FourthWordLabel;
@property (strong, nonatomic)  UILabel *FifthWordLabel;
@property (strong, nonatomic)  UILabel *SixthWordLabel;
@property (strong, nonatomic)  UILabel *SeventhWordLabel;

@property (strong,nonatomic) QBFlatButton *genereteButton;


@end

@implementation BrainStormingFirstViewController_iPad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setUserInterface];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUserInterface];
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [self setUserInterface];

}

-(void)setUserInterface
{
    int ViewHeight = self.view.bounds.size.height;
    int ViewWidth  = self.view.bounds.size.width;
    int TabBarItemHeight = [[[self tabBarController] rotatingHeaderView] frame].size.height;
    int ClientHeight = ViewHeight - TabBarItemHeight;
    int ClientWidth  = ViewWidth;
    
    [self SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:ClientHeight Width:ClientWidth];
}

-(void)SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:(int)ScrollView_height Width:(int)ScrollView_width
{
    
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

 
    self.FirstWordLabel.text = @"";
    self.SecondWordLabel.text = @"";
    self.ThirdWordLabel.text = @"";
    self.FourthWordLabel.text = @"";
    self.FifthWordLabel.text = @"";
    self.SixthWordLabel.text = @"";
    self.SeventhWordLabel.text = @"";
    
    
    self.FirstWordLabel.text = @"aaa";
    self.SecondWordLabel.text = @"aaa";
    self.ThirdWordLabel.text = @"aaa";
    self.FourthWordLabel.text = @"aaa";
    self.FifthWordLabel.text = @"aaa";
    self.SixthWordLabel.text = @"aaa";
    self.SeventhWordLabel.text = @"aaa";
    
    
    
    [self.view addSubview:self.FirstWordLabel];
    [self.view addSubview:self.SecondWordLabel];
    [self.view addSubview:self.ThirdWordLabel];
    [self.view addSubview:self.FourthWordLabel];
    [self.view addSubview:self.FifthWordLabel];
    [self.view addSubview:self.SixthWordLabel];
    [self.view addSubview:self.SeventhWordLabel];

    
    
    int QBFlatButton_XCoordinateOffset = Label_XCoodinateOffset;
    int QBFlatButton_YCoordinateOffset = (int)(ScrollView_height*(312.0/430.0));
    int QBFlatButton_Width             = ScrollView_width - Label_XCoodinateOffset*2;
    int QBFlatButton_Height            = (int)(ScrollView_height *(90.0/430));
    
    self.genereteButton = [[QBFlatButton alloc] initWithFrame:CGRectMake(QBFlatButton_XCoordinateOffset,QBFlatButton_YCoordinateOffset,
                                             QBFlatButton_Width , QBFlatButton_Height)];
    
  
    self.genereteButton.surfaceColor = [UIColor colorWithRed:243.0/255.0 green:152.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.sideColor = [UIColor colorWithRed:170.0/255.0 green:105.0/255.0 blue:0 alpha:1.0];
    self.genereteButton.cornerRadius = 6.0;
    //self.genereteButton.margin = 7.0;
    self.genereteButton.depth  = 6.0;
    
    
    [self.view addSubview:self.genereteButton];
    
   // [self.genereteButton addTarget:self action:@selector(generateButton_touchDown:)
         //         forControlEvents:UIControlEventTouchDown];
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
