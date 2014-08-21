//
//  WordSelectionPlotScrollView_iPad.m
//  Hassouseisei2_0
//
//  Created by おかやん on 2014/08/20.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "WordSelectionPlotScrollView_iPad.h"


#import "GlobalSetting.h"
#import "BrainStormingAppDelegate.h"
#import "WordSetControl.h"
//


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

@property (nonatomic,strong) UISwitch *physicalWordSwitch;
@property (nonatomic,strong) UILabel *PhysicalWordLabel;

@property (nonatomic,strong) UISwitch *ElementaryWordSwitch;
@property (nonatomic,strong) UILabel *ElementaryWordLabel;


@property (nonatomic,strong) UILabel *WordCountLabel;


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




-(void)dataStructureFromUI
{
    BrainStormingAppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    GlobalSetting *setting;
    if(appdelegate.globalSetting == nil){
        setting = [[GlobalSetting alloc] init];
    }
    setting = appdelegate.globalSetting;
    setting.BiologicalWordGenerate = self.BiologicalWordSwitch.on;
    setting.ChemicalWordGenerate = self.ChemicalWordSwitch.on;
    setting.ITWordGenerate = self.ITWordSwitch.on;
    setting.ModernSocialWordGenerate = self.ModernSocialWordSwitch.on;
    setting.OpticalWordGenerate   = self.OpticalWordSwitch.on;
    setting.PhysicalWordGenerate  = self.physicalWordSwitch.on;
    setting.ElementaryWordGenerate = self.ElementaryWordSwitch.on;
    
    NSArray *items = @[@"2",@"3",@"4",@"5",@"6",@"7"];
    
    
    NSString *selectedItem =  items[[self.wordCountSegmentedControl selectedSegmentIndex]];
    setting.NumberOfGenerateWord=selectedItem.intValue;
    
}


-(void)NSUserDefaultsFromUI
{

    
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    

    
    [ud setBool:self.BiologicalWordSwitch.on forKey:BiologicalWordGenerateString];
    [ud setBool:self.ChemicalWordSwitch.on forKey:ChemicalWordGenerateString];
    [ud setBool:self.ITWordSwitch.on forKey:ITWordGenerateStringString];
    [ud setBool:self.ModernSocialWordSwitch.on forKey:ModernSocialWordGenerateString];
    [ud setBool:self.OpticalWordSwitch.on forKey:OpticalWordGenerateString];
    [ud setBool:self.physicalWordSwitch.on forKey:PhysicalWordGenerateString];
    [ud setBool:self.ElementaryWordSwitch.on forKey:ElementaryWordGenerateString];
    
    int index = [self.wordCountSegmentedControl selectedSegmentIndex];
    
    NSArray *items = @[@"2",@"3",@"4",@"5",@"6",@"7"];
    NSString  *number = items[index];
    int number_int = number.intValue;
    [ud setInteger:number_int forKey:NumberOfGenerateWordString];
    
    [ud synchronize];
    

    
}

-(void)UI_FromNSUserDefaults
{
     NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    NSMutableDictionary *defaults = [NSMutableDictionary dictionary];
    [defaults setObject:@(YES) forKey:BiologicalWordGenerateString];
    [defaults setObject:@(YES) forKey:ChemicalWordGenerateString];
    [defaults setObject:@(YES) forKey:ITWordGenerateStringString];
    [defaults setObject:@(YES) forKey:ModernSocialWordGenerateString];
    [defaults setObject:@(YES) forKey:OpticalWordGenerateString];
    [defaults setObject:@(YES) forKey:PhysicalWordGenerateString];
    [defaults setObject:@(YES) forKey:ElementaryWordGenerateString];
    //[defaults setObject:@(YES) forKey:NumberOfGenerateWordString];
    [defaults setObject:@(7) forKey:NumberOfGenerateWordString];
    [ud registerDefaults:defaults];
    
    [self.BiologicalWordSwitch setOn:[ud boolForKey:BiologicalWordGenerateString] animated:YES];
    [self.ChemicalWordSwitch   setOn:[ud boolForKey:ChemicalWordGenerateString] animated:YES];
    [self.ITWordSwitch         setOn:[ud boolForKey:ITWordGenerateStringString] animated:YES];
    [self.ModernSocialWordSwitch setOn:[ud boolForKey:ModernSocialWordGenerateString] animated:YES];
    [self.OpticalWordSwitch     setOn:[ud boolForKey:OpticalWordGenerateString] animated:YES];
    [self.physicalWordSwitch    setOn:[ud boolForKey:PhysicalWordGenerateString] animated:YES];
    [self.ElementaryWordSwitch  setOn:[ud boolForKey:ElementaryWordGenerateString] animated:YES];
    
    NSArray *items = @[@"2",@"3",@"4",@"5",@"6",@"7"];
    
    int NumberCount = [ud integerForKey:NumberOfGenerateWordString];
    
    for(int i=0;i<items.count;i++){
        NSString *item = items[i];
        if(NumberCount == item.intValue){
            [self.wordCountSegmentedControl setSelectedSegmentIndex:i];
        }
    }
    
    [ud synchronize];
    
}








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
    
    self.PhysicalWordLabel   = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+261, 68, 21)];
    self.physicalWordSwitch  = [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+261,51,31)];
    [self.PhysicalWordLabel setText:@"物理学用語"];
    [self.PhysicalWordLabel sizeToFit];
    
    self.ElementaryWordLabel = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36,Y_Offset+300, 68, 21)];
    self.ElementaryWordSwitch= [[UISwitch alloc] initWithFrame:CGRectMake(X_Offset+237,Y_Offset+300, 51, 31)];
    [self.ElementaryWordLabel setText:@"一般用語" ];
    [self.ElementaryWordLabel sizeToFit];
    
    self.WordCountLabel = [[UILabel alloc] initWithFrame:CGRectMake(X_Offset+36, Y_Offset + 339, 68, 21)];
    
    [self.WordCountLabel setText:@"ワード数は0個です"];
    [self.WordCountLabel sizeToFit];
    
    
    
    
    
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
    [self addSubview:self.PhysicalWordLabel];
    [self addSubview:self.physicalWordSwitch];
    [self addSubview:self.WordCountLabel];
    
    [self.BiologicalWordSwitch addTarget:self action:@selector(WordPoolChanged) forControlEvents:UIControlEventValueChanged];
    [self.ChemicalWordSwitch addTarget:self action:@selector(WordPoolChanged) forControlEvents:UIControlEventValueChanged];
    [self.ITWordSwitch addTarget:self action:@selector(WordPoolChanged) forControlEvents:UIControlEventValueChanged];
    [self.ModernSocialWordSwitch addTarget:self action:@selector(WordPoolChanged) forControlEvents:UIControlEventValueChanged];
    [self.OpticalWordSwitch addTarget:self action:@selector(WordPoolChanged) forControlEvents:UIControlEventValueChanged];
    [self.ElementaryWordSwitch addTarget:self action:@selector(WordPoolChanged) forControlEvents:UIControlEventValueChanged];
    [self.physicalWordSwitch addTarget:self action:@selector(WordPoolChanged) forControlEvents:UIControlEventValueChanged];
    
}

-(void)WordPoolChanged
{
    [self dataStructureFromUI];

    [self.WordCountLabel setText:[NSString stringWithFormat:@"ワード数は%d個です",[WordSetControl CountWordPool]]];
    
    [self.WordCountLabel sizeToFit];
    
}

@end
