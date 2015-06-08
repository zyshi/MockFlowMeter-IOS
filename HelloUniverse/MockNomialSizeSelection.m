//
//  MockNomialSizeSelection.m
//  HelloUniverse
//
//  Created by Zhongyi Shi on 6/4/15.
//  Copyright (c) 2015 450-turtle. All rights reserved.
//

#import "MockNomialSizeSelection.h"
#import "MockPipeSettingView.h"

@interface MockNomialSizeSelection ()

@end

@implementation MockNomialSizeSelection

-(void)loadData {
    [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"NomialSizeSaved"];
    int checkSize = [[NSUserDefaults standardUserDefaults] integerForKey:@"NomialSizeSaved"];
    NSLog(@"MSg: %d", checkSize);
}

-(IBAction)PipeSpec:(id)sender {
//    [self loadData];
}

-(IBAction)NS2in:(id)sender {
    ScoreNumber = 2;
    [self loadData];
//    printf("2");
}


-(IBAction)NS3in:(id)sender {
    ScoreNumber = 3;
    [self loadData];
//    printf("3");

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
    [self loadData];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
