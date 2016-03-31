//
//  ViewController.m
//  GuidePage
//
//  Created by fangjs on 16/3/28.
//  Copyright © 2016年 fangjs. All rights reserved.
//

#import "ViewController.h"
#import "GuidePageCell.h"
#import "drawView.h"
#import "testViewController.h"



#define cellWidth [[UIScreen mainScreen] bounds].size.width
#define cellHeight [[UIScreen mainScreen] bounds].size.height

static NSString * const reuseIdentifier = @"Identifier";

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (nonatomic , strong) UICollectionView *collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(cellWidth, cellHeight);
    flowLayout.minimumLineSpacing = 0;
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    CGRect rect = CGRectMake(0, 0, cellWidth, cellHeight);
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:flowLayout];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.bounces = NO;
    
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([GuidePageCell class]) bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    
    [self.view addSubview:self.collectionView];
}

#pragma mark - UICollectionView DataSource

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    GuidePageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.image = [UIImage imageNamed:[NSString stringWithFormat:@"%zd",indexPath.item + 9]];
    
    [cell setIndexPath:indexPath withCount:4];
    
    return cell;
}

#pragma mark - UICollectionView Delegate

- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
    NSLog(@"indexPath.item = %zd",indexPath.item);
}


- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"%f",scrollView.contentOffset.x);
    
    if (scrollView.contentOffset.x == cellWidth*3) {
            GuidePageCell *cell = (GuidePageCell *)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:3 inSection:0]];
            if (!cell.myButton.hidden) {
                [cell.myButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
            }
    }
}

- (void)buttonClick {
    NSLog(@"可行");
    testViewController *testVC = [[testViewController alloc] init];
    [self presentViewController:testVC animated:YES completion:^{
       
        NSLog(@"调用结束");
    }];
    
//    drawView *myView = [[drawView alloc] initWithFrame:CGRectMake(0, 0, cellWidth, cellHeight)];
//    myView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
//
//    UIWindow *window = [UIApplication sharedApplication].keyWindow;
//    [window addSubview:myView];
//    
}




























- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
