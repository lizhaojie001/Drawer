//
//  NaviViewController.m
//  DrawerTest
//
//  Created by tareba on 16/1/12.
//  Copyright © 2016年 tanada. All rights reserved.
//

#import "NaviViewController.h"
#import "UIViewController+MMDrawerController.h"
@interface NaviViewController ()

@end

@implementation NaviViewController
- (UIStatusBarStyle)preferredStatusBarStyle {
    if (self.mm_drawerController.showsStatusBarBackgroundView) {
        return UIStatusBarStyleLightContent;
    }else{
        return UIStatusBarStyleDefault;
    }
    
}


@end
