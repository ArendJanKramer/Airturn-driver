//
//  KeyboardDriver.m
//  AirturnSample
//
//  Created by Arend Jan Kramer on 29-12-11.
//  Copyright (c) 2011 Arend Jan Kramer. All rights reserved.
//

#import "KeyboardDriver.h"

@implementation KeyboardDriver

@synthesize delegate;

// Textfield delegates
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"shouldChangeCharactersInRange");

    [[self delegate] didReceiveKeydown:string];
    
    return false;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField
{   
    NSLog(@"textFieldShouldClear");
    return false;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{   
    NSLog(@"textFieldShouldEndEditing");
    return true;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{   
    NSLog(@"textFieldShouldBeginEditing");
    return true;
}

-(void)makeKeyboardFirstResponder
{
    NSLog(@"makeKeyboardFirstResponder");
    
    [input resignFirstResponder];
    
    if (![input becomeFirstResponder])
    {
        [self performSelector:@selector(makeKeyboardFirstResponder) withObject:nil afterDelay:0.3];
        NSLog(@" > Failed");
    }
    else
    {
        NSLog(@" > Ok");
    }
}

-(id)initWithDelegate:(id)dlg
{
    
    self = [super init];
	
	if (self)
	{
        delegate = dlg;
        inputView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        input = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        [input setInputView:inputView];
        input.delegate = self;
        [self addSubview:input];
        [input becomeFirstResponder];
            
	}	
	
	return self;

}

@end
