//
//  AppDelegate.h
//  justGo
//
//  Created by newhuidong on 16/1/25.
//  Copyright © 2016年 HuiDong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong,nonatomic)LeftSlideViewController * leftVC;

@property(nonatomic,strong)UINavigationController * mainNavigationController;

@property(nonatomic,strong)NSString * token;


@end

