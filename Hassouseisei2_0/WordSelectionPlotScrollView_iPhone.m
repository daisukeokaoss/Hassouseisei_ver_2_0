//
//  WordSelectionPlotScrollView_iPhone.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/19.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordSelectionPlotScrollView_iPhone.h"


@interface WordSelectionPlotScrollView_iPhone()

@property (nonatomic,strong) UISegmentedControl *wordCountSegmentedControl;

@property (nonatomic,strong) UISwitch *BiologicalWordSwitch;
@property (nonatomic,strong) UILabel  *BiologicalWordLabel;

@property (nonatomic,strong) UISwitch *ChemicalWordSwitch;
@property (nonatomic,strong) UILabel  *ChemicalWordLabel;

@property (nonatomic,strong) UISwitch *ITWordSwitch;
@property (nonatomic,strong) UILabel  *ITWordLabel;

@property (nonatomic,strong) UISwitch *ModernSocialWordSwitch;
@property (nonatomic,strong) UILabel  *ModernSocialWordLabel;

@property (nonatomic,strong) UISwitch *OpticalWordSwitch;
@property (nonatomic,strong) UILabel *OpticalWordLabel;

@property (nonatomic,strong) UISwitch *ElementaryWordSwitch;
@property (nonatomic,strong) UILabel *ElementaryWordLabel;
@end

@implementation WordSelectionPlotScrollView_iPhone

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)BuildUserInterfaceWithCGSize:(CGSize)size
{
    [self setContentSize:size];
    
    
    NSArray *items = @[@"2",@"3",@"4",@"5",@"6",@"7"];
    
    self.wordCountSegmentedControl = [[UISegmentedControl alloc] initWithItems:items];
    
    [self.wordCountSegmentedControl setFrame:CGRectMake(30,20,250, 29)];
    
    
    self.BiologicalWordLabel  = [[UILabel alloc] initWithFrame:CGRectMake(36,66, 68, 21)];
    self.BiologicalWordSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(237,66,51 , 31)];
    
    [self.BiologicalWordLabel setText:@"生物用語"];
    [self.BiologicalWordLabel sizeToFit];
    
    
    self.ChemicalWordLabel    = [[UILabel alloc] initWithFrame:CGRectMake(36,105,68, 21)];
    self.ChemicalWordSwitch   = [[UISwitch alloc] initWithFrame:CGRectMake(237,105, 51, 31)];
    
    [self.ChemicalWordLabel setText:@"化学用語"];
    [self.ChemicalWordLabel sizeToFit];
    
    self.ITWordLabel         = [[UILabel alloc] initWithFrame:CGRectMake(36,144,49,21)];
    self.ITWordSwitch        = [[UISwitch alloc] initWithFrame:CGRectMake(237, 144, 51, 31)];
    [self.ITWordLabel setText:@"IT用語"];
    [self.ITWordLabel sizeToFit];
    
    
    self.ModernSocialWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(36,183,102, 21)];
    self.ModernSocialWordSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(237,183,51,31)];
    [self.ModernSocialWordLabel setText:@"現代社会用語"];
    [self.ModernSocialWordLabel sizeToFit];
    
    
    //ここ、作りかけ
    
    
    
    
    
    
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
