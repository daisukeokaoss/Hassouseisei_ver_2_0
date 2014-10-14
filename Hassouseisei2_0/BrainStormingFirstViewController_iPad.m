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
#import "WordPlotScrollView_iPad.h"

@interface BrainStormingFirstViewController_iPad ()
@property (strong, nonatomic)  UILabel *FirstWordLabel;
@property (strong, nonatomic)  UILabel *SecondWordLabel;
@property (strong, nonatomic)  UILabel *ThirdWordLabel;
@property (strong, nonatomic)  UILabel *FourthWordLabel;
@property (strong, nonatomic)  UILabel *FifthWordLabel;
@property (strong, nonatomic)  UILabel *SixthWordLabel;
@property (strong, nonatomic)  UILabel *SeventhWordLabel;

@property (strong,nonatomic) QBFlatButton *genereteButton;

@property (weak, nonatomic) IBOutlet WordPlotScrollView_iPad *WordPlotScrollView;

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
    self.WordPlotScrollView.mainViewController = self;
    
    
    
    
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
    
    [self setUserInterface];
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
    int ClientHeight = ViewHeight;
    int ClientWidth  = ViewWidth;
    [self.WordPlotScrollView setFrame:CGRectMake(0, 0, ClientWidth, ClientHeight)];
    
    [self.WordPlotScrollView SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:ClientHeight Width:ClientWidth];
  //  [self SetupLabelAndQBFlatButtonAtSpecifiedWidthHeight_iPad_Height:ClientHeight Width:ClientWidth];
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
