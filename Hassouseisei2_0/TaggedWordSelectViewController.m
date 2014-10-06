//
//  TaggedWordSelectViewController.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/10/06.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "TaggedWordSelectViewController.h"

//ユーザーインポート
#import "TagPlotTableViewController.h"


//以下、色定義
#define myColorSteelblue [UIColor colorWithRed: (70.0)/255.0 green: (130.0)/255.0 blue: (180.0)/255.0 alpha: 1.0]
#define myColorDarkgreen [UIColor colorWithRed: (0.0)/255.0 green: (100.0)/255.0 blue: (0.0)/255.0 alpha: 1.0]
#define myColorMediumpurple [UIColor colorWithRed: (147.0)/255.0 green: (112.0)/255.0 blue: (219.0)/255.0 alpha: 1.0]
#define myColorMediumvioletred [UIColor colorWithRed: (199.0)/255.0 green: (21.0)/255.0 blue: (133.0)/255.0 alpha: 1.0]

@interface TaggedWordSelectViewController ()

@property (nonatomic,strong)UIButton *ShowTagHistoryOfA;
@property (nonatomic,strong)UIButton *ShowTagHistoryOfB;
@property (nonatomic,strong)UIButton *showTagHistoryOfC;
@property (nonatomic,strong)UIButton *showTagHistoryOfD;
@property (nonatomic,strong)UIButton *showTagHistoryOfE;
@property (nonatomic,strong)UIButton *CloseButton;



@end

@implementation TaggedWordSelectViewController

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
 

    
    
    


    
    
    self.ShowTagHistoryOfA = [[UIButton alloc] initWithFrame:CGRectMake(16, 30+50, 280, 20)];
    [self.ShowTagHistoryOfA setTitle:@"お気に入りA" forState:UIControlStateNormal];
    [self.ShowTagHistoryOfA setBackgroundColor:myColorDarkgreen];
    [self.view addSubview:self.ShowTagHistoryOfA];
    
    self.ShowTagHistoryOfB = [[UIButton alloc] initWithFrame:CGRectMake(16,30+50*2, 280, 20)];
    [self.ShowTagHistoryOfB setTitle:@"お気に入りB" forState:UIControlStateNormal];
    [self.ShowTagHistoryOfB setBackgroundColor:myColorMediumpurple];
    [self.view addSubview:self.ShowTagHistoryOfB];
    
    self.showTagHistoryOfC = [[UIButton alloc] initWithFrame:CGRectMake(16, 30+50*3, 280, 20)];
    [self.showTagHistoryOfC setTitle:@"お気に入りC" forState:UIControlStateNormal];
    [self.showTagHistoryOfC setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:self.showTagHistoryOfC];
    
    self.showTagHistoryOfD = [[UIButton alloc] initWithFrame:CGRectMake(16,30+50*4, 280, 20)];
    [self.showTagHistoryOfD setTitle:@"お気に入りD" forState:UIControlStateNormal];
    [self.showTagHistoryOfD setBackgroundColor:myColorMediumvioletred];
    [self.view addSubview:self.showTagHistoryOfD];
    
    self.showTagHistoryOfE = [[UIButton alloc] initWithFrame:CGRectMake(16,30+50*5, 280, 20)];
    [self.showTagHistoryOfE setTitle:@"お気に入りE" forState:UIControlStateNormal];
    [self.showTagHistoryOfE setBackgroundColor:[UIColor magentaColor]];
    [self.view addSubview:self.showTagHistoryOfE];
    
    self.CloseButton = [[UIButton alloc] initWithFrame:CGRectMake(16, 30+50*6, 280, 20)];
    [self.CloseButton setTitle:@"戻る" forState:UIControlStateNormal];
    [self.CloseButton setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:self.CloseButton];
    
    [self.ShowTagHistoryOfA addTarget:self action:@selector(ShowTagWordA) forControlEvents:UIControlEventTouchUpInside];
    [self.ShowTagHistoryOfB addTarget:self action:@selector(ShowTagWordB) forControlEvents:UIControlEventTouchUpInside];
    [self.showTagHistoryOfC addTarget:self action:@selector(ShowTagWordC) forControlEvents:UIControlEventTouchUpInside];
    [self.showTagHistoryOfD addTarget:self action:@selector(ShowTagWordD) forControlEvents:UIControlEventTouchUpInside];
    [self.showTagHistoryOfE addTarget:self action:@selector(ShowTagWordE) forControlEvents:UIControlEventTouchUpInside];
    [self.CloseButton addTarget:self action:@selector(ReturnToMain) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void)ShowTagWordA
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    //そのStoryboardにある遷移先のViewConrollerを用意して
    TaggedWordSelectViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"TaggedWordNC"];
    //呼び出し！
    [self presentViewController:vc animated:YES completion:nil];
    
}
-(void)ShowTagWordB
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    //そのStoryboardにある遷移先のViewConrollerを用意して
    TaggedWordSelectViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"TaggedWordNC"];
    //呼び出し！
    [self presentViewController:vc animated:YES completion:nil];
    
}
-(void)ShowTagWordC
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    //そのStoryboardにある遷移先のViewConrollerを用意して
    TaggedWordSelectViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"TaggedWordNC"];
    //呼び出し！
    [self presentViewController:vc animated:YES completion:nil];
    
}
-(void)ShowTagWordD
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    //そのStoryboardにある遷移先のViewConrollerを用意して
    TaggedWordSelectViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"TaggedWordNC"];
    //呼び出し！
    [self presentViewController:vc animated:YES completion:nil];
    
}
-(void)ShowTagWordE
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    //そのStoryboardにある遷移先のViewConrollerを用意して
    TaggedWordSelectViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"TaggedWordNC"];
    //呼び出し！
    [self presentViewController:vc animated:YES completion:nil];
    
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
