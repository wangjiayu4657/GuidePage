//
//  GuidePageCell.m
//  GuidePage
//
//  Created by fangjs on 16/3/28.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "GuidePageCell.h"

@interface GuidePageCell ()
@property (weak, nonatomic) IBOutlet UIImageView *pageImage;


@end


@implementation GuidePageCell

- (void)awakeFromNib {
    // Initialization code
    
    self.myButton.layer.borderWidth = 1.0f;
    self.myButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.myButton.layer.masksToBounds = YES;
    self.myButton.layer.cornerRadius = 5.0f;

    
}



- (void)setImage:(UIImage *)image {
    _image = image;
    self.pageImage.image = image;
}


-(void)setIndexPath:(NSIndexPath *)indexPath withCount:(NSInteger)count {
    if (indexPath.item == count - 1) {
        self.myButton.hidden = NO;
    }
    else {
        self.myButton.hidden = YES;
    }
}

- (IBAction)myButton:(id)sender {
    NSLog(@"哈哈哈哈");
    
    
}



@end
