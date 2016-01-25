//
//  leftMenuVC.h
//  justGo
//
//  Created by newhuidong on 16/1/25.
//  Copyright © 2016年 HuiDong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol clearDelegate <NSObject>

-(void)clear;


@end

@interface leftMenuVC : UIViewController

@property (nonatomic,strong)UITableView * tableView;

@property(nonatomic,strong)id<clearDelegate>delegate;


@end