//
//  MockNomialSizeSelection.h
//  HelloUniverse
//
//  Created by Zhongyi Shi on 6/4/15.
//  Copyright (c) 2015 450-turtle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MockPipeSettingView.h"

int ScoreNumber;
@interface MockNomialSizeSelection : UIViewController {
    
    IBOutlet UIButton *NS2in;
    IBOutlet UIButton *NS3in;
    IBOutlet UIButton *PipeSpec;
    
}

// link up button
-(IBAction)NS2in:(id)sender;
-(IBAction)NS3in:(id)sender;
-(IBAction)PipeSpec:(id)sender;
-(void)loadData;
@end
