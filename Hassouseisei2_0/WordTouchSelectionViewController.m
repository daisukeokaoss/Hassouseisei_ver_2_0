//
//  WordTouchSelectionViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/10/02.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordTouchSelectionViewController.h"

@interface WordTouchSelectionViewController ()
@property (nonatomic,strong) UILabel *TappedWordLabel;

@property (nonatomic,strong) UIButton *GoogleSearchUIButton;

@property (nonatomic,strong) UIButton *TagThisWord;

@end

@implementation WordTouchSelectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self BuildInterface];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)BuildInterface
{
    self.view.backgroundColor =[UIColor whiteColor];
    
    self.TappedWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(16, 30, 280, 20)];
    [self.TappedWordLabel setText:self.TappedWord];
    [self.view addSubview:self.TappedWordLabel];
    
    self.GoogleSearchUIButton = [[UIButton alloc] initWithFrame:CGRectMake(16, 66, 280, 20)];
    [self.GoogleSearchUIButton setTitle:@"Google Search" forState:UIControlStateNormal];
    [self.GoogleSearchUIButton setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:self.GoogleSearchUIButton];
    
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
