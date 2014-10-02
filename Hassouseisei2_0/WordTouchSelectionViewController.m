//
//  WordTouchSelectionViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/10/02.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordTouchSelectionViewController.h"
#import "SearchViewController.h"

//以下、色定義
#define myColorSteelblue [UIColor colorWithRed: (70.0)/255.0 green: (130.0)/255.0 blue: (180.0)/255.0 alpha: 1.0]
#define myColorDarkgreen [UIColor colorWithRed: (0.0)/255.0 green: (100.0)/255.0 blue: (0.0)/255.0 alpha: 1.0]
#define myColorMediumpurple [UIColor colorWithRed: (147.0)/255.0 green: (112.0)/255.0 blue: (219.0)/255.0 alpha: 1.0]
#define myColorMediumvioletred [UIColor colorWithRed: (199.0)/255.0 green: (21.0)/255.0 blue: (133.0)/255.0 alpha: 1.0]



@interface WordTouchSelectionViewController ()
@property (nonatomic,strong) UILabel *TappedWordLabel;

@property (nonatomic,strong) UIButton *GoogleSearchUIButton;

@property (nonatomic,strong) UIButton *TagThisWordA;
@property (nonatomic,strong) UIButton *TagThisWordB;
@property (nonatomic,strong) UIButton *TagThisWordC;
@property (nonatomic,strong) UIButton *TagThisWordD;
@property (nonatomic,strong) UIButton *TagThisWordE;

@property (nonatomic,strong) UIButton *CloseButton;

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
    int offset = 50;
    self.GoogleSearchUIButton = [[UIButton alloc] initWithFrame:CGRectMake(16, 30+50, 280, 20)];
    [self.GoogleSearchUIButton setTitle:@"Google Search" forState:UIControlStateNormal];
    [self.GoogleSearchUIButton setBackgroundColor:myColorSteelblue];
    
    
    self.TagThisWordA = [[UIButton alloc] initWithFrame:CGRectMake(16, 30+50*2+offset, 280, 20)];
    [self.TagThisWordA setTitle:@"この単語をお気に入りAに入れる" forState:UIControlStateNormal];
    [self.TagThisWordA setBackgroundColor:myColorDarkgreen];
    [self.view addSubview:self.TagThisWordA];
    
    self.TagThisWordB = [[UIButton alloc] initWithFrame:CGRectMake(16,30+50*3+offset, 280, 20)];
    [self.TagThisWordB setTitle:@"この単語をお気に入りBに入れる" forState:UIControlStateNormal];
    [self.TagThisWordB setBackgroundColor:myColorMediumpurple];
    [self.view addSubview:self.TagThisWordB];
    
    self.TagThisWordC = [[UIButton alloc] initWithFrame:CGRectMake(16, 30+50*4+offset, 280, 20)];
    [self.TagThisWordC setTitle:@"この単語をお気に入りCに入れる" forState:UIControlStateNormal];
    [self.TagThisWordC setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:self.TagThisWordC];
    
    self.TagThisWordD = [[UIButton alloc] initWithFrame:CGRectMake(16,30+50*5+offset, 280, 20)];
    [self.TagThisWordD setTitle:@"この単語をお気に入りDに入れる" forState:UIControlStateNormal];
    [self.TagThisWordD setBackgroundColor:myColorMediumvioletred];
    [self.view addSubview:self.TagThisWordD];
    
    self.TagThisWordE = [[UIButton alloc] initWithFrame:CGRectMake(16,30+50*6+offset, 280, 20)];
    [self.TagThisWordE setTitle:@"この単語をお気に入りEに入れる" forState:UIControlStateNormal];
    [self.TagThisWordE setBackgroundColor:[UIColor magentaColor]];
    [self.view addSubview:self.TagThisWordE];
    
    self.CloseButton = [[UIButton alloc] initWithFrame:CGRectMake(16, 30+50*6+offset*2, 280, 20)];
    [self.CloseButton setTitle:@"戻る" forState:UIControlStateNormal];
    [self.CloseButton setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:self.CloseButton];
    
    self.GoogleSearchUIButton.tag = 1;
    
    [self.GoogleSearchUIButton addTarget:self action:@selector(GoogleSearchButton) forControlEvents:UIControlEventTouchUpInside];
    [self.TagThisWordA addTarget:self action:@selector(TagToWordsetA) forControlEvents:UIControlEventTouchUpInside];
    [self.TagThisWordB addTarget:self action:@selector(TagToWordsetB) forControlEvents:UIControlEventTouchUpInside];
    [self.TagThisWordC addTarget:self action:@selector(TagToWordsetC) forControlEvents:UIControlEventTouchUpInside];
    [self.TagThisWordD addTarget:self action:@selector(TagToWordsetD) forControlEvents:UIControlEventTouchUpInside];
    [self.TagThisWordE addTarget:self action:@selector(TagToWordSetE) forControlEvents:UIControlEventTouchUpInside];
    [self.CloseButton addTarget:self action:@selector(ReturnToMain) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.GoogleSearchUIButton];
    
    
    
}

-(void)GoogleSearchButton
{
    
    SearchViewController* ViewController = [[SearchViewController alloc] init];
    ViewController.SearchString =  self.TappedWord;
    ViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //アニメーションを有効にしてビューを表示します。
    [self presentViewController: ViewController animated:YES completion: nil];
    
}

-(void)TagToWordsetA
{
    
}

-(void)TagToWordsetB
{
    
}

-(void)TagToWordsetC
{
    
}

-(void)TagToWordsetD
{
    
}

-(void)TagToWordSetE
{
    
}

-(void)ReturnToMain
{
     [self dismissViewControllerAnimated:YES completion:nil];   
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
