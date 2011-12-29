//
//  ViewController.m
//  AirturnSample
//
//  Created by Arend Jan Kramer on 29-12-11.
//  Copyright (c) 2011 Sizzit. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize outPutLbl;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void)makeKeyboardFirstResponder
{
    
    [driver makeKeyboardFirstResponder];
}

-(void) didReceiveKeydown:(NSString *)key
{
    NSLog(@"You pressed a key : %@",key);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    driver = [[KeyboardDriver alloc] initWithDelegate:self];
    [self.view addSubview:driver];
    
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
