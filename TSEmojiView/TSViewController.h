//
//  TSViewController.h
//  TSEmojiView
//
//  Created by Shawn Ma on 7/24/12.
//  Copyright (c) 2012 Telenav Software, Inc. All rights reserved.
//

#import "TSEmojiView.h"

@interface TSViewController : UIViewController<TSEmojiViewDelegate> {
    UITextView  *_textView;
    TSEmojiView *_emojiView;
}

@end
