//
//  KeyboardDriver.h
//  AirturnSample
//
//  Created by Arend Jan Kramer on 29-12-11.
//  Copyright (c) 2011 Arend Jan Kramer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KeyboardDelegate;

@protocol KeyboardDelegate <NSObject>
@optional
- (void)didReceiveKeydown:(NSString*)key;
@end

@interface KeyboardDriver : UIView <UITextFieldDelegate>
{
    id <KeyboardDelegate> delegate;
    UIView *inputView;
    UITextField *input;
}

-(id)initWithDelegate:(id)dlg;
-(void)makeKeyboardFirstResponder;

@property (nonatomic, assign) id <KeyboardDelegate> delegate;

@end
