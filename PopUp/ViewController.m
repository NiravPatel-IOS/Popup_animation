//
//  ViewController.m
//  PopUp
//
//  Created by bhavesh donga on 2/7/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import "ViewController.h"
#import "NAPopUp.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    self.navigationController.navigationBarHidden = YES;
    PopUp = [[NAPopUp alloc] init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnpop:(id)sender
{
    viewcustom.hidden = FALSE;
    [PopUp ShowPopUp:viewcustom mainview:self.view];
}

-(IBAction)btnClose:(id)sender
{
    viewcustom.hidden = TRUE;
}

@end
