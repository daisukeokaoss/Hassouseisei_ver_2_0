//
//  SearchViewController.m
//  BrainStorming
//
//  Created by 岡 大輔 on 2013/06/07.
//  Copyright (c) 2013年 岡 大輔. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

{
@private
    UIWebView* webView;
    UIButton *btn;
}

@end

@implementation SearchViewController

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
    
    
    //////////////////////////////////////////////////////////
    //ユーザーエージェントを設定
   // NSString *modelname = [ [ UIDevice currentDevice] model];
   /* if([modelname isEqualToString:@"iPad Simulator"]||[modelname isEqualToString:@"iPad"]){
        
            NSDictionary *dictionnary = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mozilla/5.0 (iPad; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53", @"UserAgent", nil];
            [[NSUserDefaults standardUserDefaults] registerDefaults:dictionnary];
    }*/
    webView = [[UIWebView alloc] initWithFrame: CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y +80, self.view.bounds.size.width,self.view.bounds.size.height-80)];
    //webView.frame = self.view.bounds;
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    webView.scalesPageToFit = YES;
    [self.view addSubview:webView];
   // NSURLRequest* request = [NSString stringWithFormat:@"http://www.google.co.jp/search?q=&#37;@", "XCode"];

    
    
    NSString *query  = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self.SearchString, NULL, CFSTR (";,/?:@&=+$#"), kCFStringEncodingUTF8);
    
    
    NSString *url = [NSString stringWithFormat:@"http://www.google.co.jp/m/search?q=%@",query];
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [webView loadRequest:request];
    
    btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 20, self.view.bounds.size.width, 60);
    btn.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [btn setBackgroundColor:[UIColor whiteColor]];

    [btn setTitle:@"戻る" forState:UIControlStateNormal];
    [btn setTitle:@"戻る" forState:UIControlStateHighlighted];
    [btn setTitle:@"戻る" forState:UIControlStateDisabled];
    // ボタンがタッチダウンされた時にhogeメソッドを呼び出す
    [btn addTarget:self action:@selector(hoge:)
  forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
}

-(void)hoge:(UIButton*)button{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
