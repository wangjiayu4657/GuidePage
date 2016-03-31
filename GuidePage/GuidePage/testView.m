//
//  testView.m
//  GuidePage
//
//  Created by fangjs on 16/3/28.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "testView.h"

@implementation testView

- (instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        
        self.backgroundColor = [UIColor yellowColor];
        [self setUp];
    }
    return self;
}

- (void) setUp {
    [self addSubview: [[[NSBundle mainBundle] loadNibNamed:@"testView" owner:self options:nil] firstObject]];
}

-(void)awakeFromNib {
    NSLog(@"哈哈哈");
 
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
