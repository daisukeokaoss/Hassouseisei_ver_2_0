//
//  CopyrightViewController.m
//  BrainStorming
//
//  Created by 岡 大輔 on 2013/10/05.
//  Copyright (c) 2013年 岡 大輔. All rights reserved.
//

#import "CopyrightViewController.h"


//ユーザーインクルード


@interface CopyrightViewController ()
@property (nonatomic,strong)UIButton *ReturnButton;
@property (nonatomic,strong)CopyrightView *myTextView;

@end

@implementation CopyrightViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //[self.copyright1 InputCopyrightInformation];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.myTextView = [[CopyrightView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y +50, self.view.bounds.size.width,self.view.bounds.size.height-50)];

    [self.myTextView InputCopyrightInformation];
    [self.myTextView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    [self.myTextView setEditable:NO];
    
    self.ReturnButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 50)];
    
    self.ReturnButton.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.ReturnButton setBackgroundColor:[UIColor whiteColor]];
    
    [self.ReturnButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self.ReturnButton setTitle:@"戻る" forState:UIControlStateNormal];
   // [self.ReturnButton setTitle:@"戻る" forState:UIControlStateHighlighted];
   // [self.ReturnButton setTitle:@"戻る" forState:UIControlStateDisabled];
    
    [self.view addSubview:self.ReturnButton];
    [self.view addSubview:self.myTextView];
    
    [self.ReturnButton addTarget:self action:@selector(ReturnButtonTap) forControlEvents:UIControlEventTouchUpInside];

    
}


- (void)ReturnButtonTap
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
