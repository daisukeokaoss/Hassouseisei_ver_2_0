//
//  WordSelectionPlotScrollView_iPhone.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/19.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordSelectionPlotScrollView_iPhone.h"


@interface WordSelectionPlotScrollView_iPhone()

@property (nonatomic,strong) UISwitch *BiologicalWordSwitch;
@property (nonatomic,strong) UILabel  *BiologicalWordLabel;
@property (nonatomic,strong) UISwitch *ChemicalWordSwitch;
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
    
    self.BiologicalWordSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(30, 30,51 , 31)];
    self.BiologicalWordLabel  = [[UILabel alloc] initWithFrame:CGRectMake(90,30, 68, 21)];
    [self.BiologicalWordLabel setText:@"化学用語"];
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
