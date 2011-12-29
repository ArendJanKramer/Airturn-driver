//
//  ViewController.h
//  AirturnSample
//
//  Created by Arend Jan Kramer on 29-12-11.
//  Copyright (c) 2011 Sizzit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KeyboardDriver.h"

@interface ViewController : UIViewController <KeyboardDelegate>
{
    KeyboardDriver *driver;
}

-(void)makeKeyboardFirstResponder;

@property(nonatomic, retain) IBOutlet UILabel *outPutLbl;

@end
