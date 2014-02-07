//
//  NAPopUp.h
//  PopUp
//
//  Created by bhavesh donga on 2/7/14.
//  Copyright (c) 2014 bhavesh donga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NAPopUp : UIView
{
    float width;
    float height;
    float x;
    float y;
}

-(void)ShowPopUp:(UIView *)View mainview:(UIView *)MainView;

@end
