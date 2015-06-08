//
//  MockPipeSettingView.m
//  HelloUniverse
//
//  Created by Zhongyi Shi on 6/4/15.
//  Copyright (c) 2015 450-turtle. All rights reserved.
//

#import "MockPipeSettingView.h"

@interface MockPipeSettingView ()

@end

@implementation MockPipeSettingView
-(IBAction)NomialSize:(id)sender{
    // cache old size
    OldSize = [[NSUserDefaults standardUserDefaults] integerForKey:@"NomialSizeSaved"];
}

-(IBAction)Donebtn:(id)sender {
    
}

-(IBAction)Cancelbtn:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:OldSize forKey:@"NomialSizeSaved"];

    int aaa = [[NSUserDefaults standardUserDefaults] integerForKey:@"NomialSizeSaved"];
    NSLog(@"MSg cancel: %d", aaa);
}

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
    NomialSizeNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"NomialSizeSaved"];
    long localmm = 0;
    if ((long)NomialSizeNumber != 2 && (long)NomialSizeNumber != 3) {
        NomialSizeNumber = 2;
    }
    localmm = (long)NomialSizeNumber * 25;
    HighScore.text = [NSString stringWithFormat:@"%liin (%limm)", (long)NomialSizeNumber, localmm];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
