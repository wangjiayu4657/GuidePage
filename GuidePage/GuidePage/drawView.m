//
//  drawView.m
//  GuidePage
//
//  Created by fangjs on 16/3/28.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "drawView.h"
#import <UIKit/UIKit.h>
@implementation drawView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

-(void)awakeFromNib {
    
}

- (void)drawRect:(CGRect)rect {
    

    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 300, 300);
    
    CGContextMoveToPoint(context, 300, 100);
    CGContextAddLineToPoint(context, 100, 300);
    
    CGContextStrokePath(context);
}







@end
