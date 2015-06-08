//
//  MockPipeSettingView.h
//  HelloUniverse
//
//  Created by Zhongyi Shi on 6/4/15.
//  Copyright (c) 2015 450-turtle. All rights reserved.
//

#import <UIKit/UIKit.h>
NSString * PendingNomialSize;

NSInteger NomialSizeNumber;
NSInteger OldSize;

@interface MockPipeSettingView : UIViewController {
    IBOutlet UIButton *NomialSize;
    IBOutlet UIButton *Donebtn;
    IBOutlet UIButton *Cancelbtn;
    
    IBOutlet UILabel *HighScore;
    
}

// link up button
-(IBAction)NomialSize:(id)sender;

-(IBAction)Donebtn:(id)sender;

-(IBAction)Cancelbtn:(id)sender;

@end
