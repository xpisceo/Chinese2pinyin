//
//  ViewController.m
//  pynz
//
//  Created by kingtrust kingtrust on 11-10-26.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//
#import "ViewController.h"
@implementation ViewController
@synthesize tvUp;
@synthesize tvDown;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    if (!py) {
        py = [[Pinyinizer alloc] init];
    }
     tvDown.delegate = self;
    tvUp.text =@"";
    tvDown.text =@"";
    tvUp.editable = NO;
    [tvDown becomeFirstResponder];
    
}
-(void)textViewDidChange:(UITextView *)textView
{
    tvUp.text = [py convertToPinyin:tvDown.text];
}

- (void)viewDidUnload
{
    [self setTvUp:nil];
    [self setTvDown:nil];
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [tvUp release];
    [tvDown release];
    [super dealloc];
}

@end
