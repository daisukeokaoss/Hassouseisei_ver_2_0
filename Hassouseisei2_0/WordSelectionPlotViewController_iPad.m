//
//  WordSelectionPlotViewController_iPad.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/20.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordSelectionPlotViewController_iPad.h"


//ユーザーインクルード
#import "WordSelectionPlotScrollView_iPad.h"

@interface WordSelectionPlotViewController_iPad ()
@property (weak, nonatomic) IBOutlet WordSelectionPlotScrollView_iPad *myScrollView;


@end

@implementation WordSelectionPlotViewController_iPad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int ViewHeight = self.view.bounds.size.height;
    int ViewWidth  = self.view.bounds.size.width;
    
    CGSize size = CGSizeMake(ViewWidth, ViewHeight);
    
    [self.myScrollView BuildUserInterfaceWithCGSize:size];
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
