//
//  ViewController.h
//  pynz
//
//  Created by kingtrust kingtrust on 11-10-26.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pinyinizer.h"
Pinyinizer *py;

@interface ViewController : UIViewController<UITextViewDelegate>
@property (retain, nonatomic) IBOutlet UITextView *tvUp;
@property (retain, nonatomic) IBOutlet UITextView *tvDown;


@end
