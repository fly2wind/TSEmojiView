//
//  TSViewController.m
//  TSEmojiView
//
//  Created by Shawn Ma on 7/24/12.
//  Copyright (c) 2012 Telenav Software, Inc. All rights reserved.
//

#import "TSViewController.h"

@interface TSViewController ()

@end

@implementation TSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    _textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, 300, 200)];
    [_textView setEditable:NO];
    [_textView setFont:[UIFont systemFontOfSize:14]];
    [_textView setTextColor:[UIColor blackColor]];
    [_textView setContentInset:UIEdgeInsetsMake(0, 4, 0, 4)];  
    [_textView.layer setCornerRadius:6];
    [_textView.layer setMasksToBounds:YES];
    [self.view addSubview:_textView];
    
	
    _emojiView = [[TSEmojiView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 216, 320, 216)];
    _emojiView.delegate = self;
    [self.view addSubview:_emojiView];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}

- (void)didTouchEmojiView:(TSEmojiView*)emojiView touchedEmoji:(NSString*)str
{
    _textView.text = [NSString stringWithFormat:@"%@%@", _textView.text, str];
}

@end
