//
//  hover_image_button.m
//  chromium-tabs
//
//  Created by TYPCN on 2015/9/4.
//
//

#import "ToolbarButton.h"

@implementation ToolbarButton

- (BOOL)wantsUpdateLayer{
    return YES;
}

- (void)updateLayer{
    CALayer *layer = [super layer];

    if (hoverState_ == kHoverStateMouseDown) {
        [layer setBackgroundColor:[NSColor colorWithRed:0.74 green:0.74 blue:0.74 alpha:1.0].CGColor];
        [layer setBorderColor:[NSColor colorWithRed:0.62 green:0.62 blue:0.62 alpha:1.0].CGColor];
        [layer setBorderWidth:2.0];
    } else if (hoverState_ == kHoverStateMouseOver) {
        [layer setBackgroundColor:nil];
        [layer setBorderColor:[NSColor colorWithRed:0.72 green:0.72 blue:0.72 alpha:1.0].CGColor];
        [layer setBorderWidth:2.0];
        
    } else {
        [layer setBorderWidth:0.0];
        [layer setBackgroundColor:nil];
    }
    
    [layer setCornerRadius:4.0];
    
}

- (void)drawRect:(NSRect)rect {
    [super setWantsLayer:YES];
}
@end