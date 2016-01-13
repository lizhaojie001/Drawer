//
//  centerViewController.m
//  DrawerTest
//
//  Created by tareba on 16/1/12.
//  Copyright © 2016年 tanada. All rights reserved.
//

#import "centerViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "MMDrawerController+Subclass.h"
#import "customCollectionViewCell.h"
@interface centerViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,strong) UICollectionView *collectionView;
@end

@implementation centerViewController
static NSString *identifier =@"Cell";
- (void)viewDidLoad {
    [super viewDidLoad];
  
    UIButton *button = [[UIButton alloc] init];
    [button setFrame:CGRectMake(0, 64, 50, 50)];
    [button setTitle:@"左边" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(Left) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [self.collectionView registerNib:[UINib nibWithNibName:@"customCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:identifier];
    
}
- (void)Left{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionDelegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    customCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.customImageView.image = [UIImage imageNamed:@"08353.jpg"];
    return cell;
}
@end
