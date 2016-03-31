//
//  GuidePageCell.h
//  GuidePage
//
//  Created by fangjs on 16/3/28.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuidePageCell : UICollectionViewCell
@property (nonatomic, strong) UIImage *image;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
- (void)setIndexPath:(NSIndexPath *) indexPath withCount:(NSInteger) count;

@end
