//
//  NAPopUp.m
//  PopUp
//
//  Created by bhavesh donga on 2/7/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import "NAPopUp.h"

@implementation NAPopUp

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


-(void)ShowPopUp:(UIView *)View mainview:(UIView *)MainView
{
    NSLog(@"%f",MainView.frame.size.width);
    width = View.frame.size.width;
    height = View.frame.size.height;
    x = View.frame.origin.x;
    y = View.frame.origin.y;
    View.frame = CGRectMake(MainView.frame.size.width/2, MainView.frame.size.height/2, 0, 0);
    [self step1:View];
    [self performSelector:@selector(step2:) withObject:View afterDelay:0.1];
    [self performSelector:@selector(step3:) withObject:View afterDelay:0.3];
}

-(void)step1:(UIView *)view
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.1];
    view.frame = CGRectMake(x-10, y-10, width+20, height+20);
    [UIView commitAnimations];
}

-(void)step2:(UIView *)view
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.2];
    view.frame = CGRectMake(x+20, y+20, width-40, height-40);
    [UIView commitAnimations];
}

-(void)step3:(UIView *)view
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    view.frame = CGRectMake(x, y, width, height);
    [UIView commitAnimations];
}

@end
