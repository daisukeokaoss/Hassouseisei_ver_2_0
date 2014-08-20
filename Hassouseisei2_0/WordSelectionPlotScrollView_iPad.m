//
//  WordSelectionPlotScrollView_iPad.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/20.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordSelectionPlotScrollView_iPad.h"

@interface WordSelectionPlotScrollView_iPad()

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



@implementation WordSelectionPlotScrollView_iPad

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


-(void)BuildUserInterfaceWithCGSize:(CGSize)size
{
    [self setContentSize:size];
    
    int X_Offset = 0;
    int Y_Offset = 50;
    
    
    
    
    NSArray *items = @[@"2",@"3",@"4",@"5",@"6",@"7"];
    
    self.wordCountSegmentedControl = [[UISegmentedControl alloc] initWithItems:items];
    
    [self.wordCountSegmentedControl setFrame:CGRectMake(X_Offset+30,Y_Offset+20,250, 29)];
    
    
    self.BiologicalWordLabel  = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+66, 68, 21)];
    self.BiologicalWordSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+66,51 , 31)];
    
    [self.BiologicalWordLabel setText:@"生物用語"];
    [self.BiologicalWordLabel sizeToFit];
    
    
    self.ChemicalWordLabel    = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+105,68, 21)];
    self.ChemicalWordSwitch   = [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+105, 51, 31)];
    
    [self.ChemicalWordLabel setText:@"化学用語"];
    [self.ChemicalWordLabel sizeToFit];
    
    self.ITWordLabel         = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+144,49,21)];
    self.ITWordSwitch        = [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+144, 51, 31)];
    [self.ITWordLabel setText:@"IT用語"];
    [self.ITWordLabel sizeToFit];
    
    
    self.ModernSocialWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+183,102, 21)];
    self.ModernSocialWordSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+183,51,31)];
    [self.ModernSocialWordLabel setText:@"現代社会用語"];
    [self.ModernSocialWordLabel sizeToFit];
    
    self.OpticalWordLabel      = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+222, 68, 21)];
    self.OpticalWordSwitch     = [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+222,51,31)];
    [self.OpticalWordLabel setText:@"光学用語"];
    [self.OpticalWordLabel sizeToFit];
    
    self.ElementaryWordLabel   = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+261, 68, 21)];
    self.ElementaryWordSwitch  = [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+261,51,31)];
    [self.ElementaryWordLabel setText:@"一般用語"];
    [self.ElementaryWordLabel sizeToFit];
    
    
    
    [self addSubview:self.wordCountSegmentedControl];
    [self addSubview:self.BiologicalWordLabel];
    [self addSubview:self.BiologicalWordSwitch];
    [self addSubview:self.ChemicalWordLabel];
    [self addSubview:self.ChemicalWordSwitch];
    [self addSubview:self.ITWordLabel];
    [self addSubview:self.ITWordSwitch];
    [self addSubview:self.ModernSocialWordLabel];
    [self addSubview:self.ModernSocialWordSwitch];
    [self addSubview:self.OpticalWordLabel];
    [self addSubview:self.OpticalWordSwitch];
    [self addSubview:self.ElementaryWordLabel];
    [self addSubview:self.ElementaryWordSwitch];
    
}

@end
