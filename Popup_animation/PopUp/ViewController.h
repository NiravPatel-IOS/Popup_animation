//
//  ViewController.h
//  PopUp
//
//  Created by bhavesh donga on 2/7/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NAPopUp;
@interface ViewController : UIViewController
{
    NAPopUp *PopUp;
    
    IBOutlet UIView *viewcustom;
}

-(IBAction)btnpop:(id)sender;
-(IBAction)btnClose:(id)sender;

@end
