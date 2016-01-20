//
//  TableView.h
//  CustumPopView
//
//  Created by newhuidong on 16/1/20.
//  Copyright © 2016年 HuiDong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableView : UIView
/**
 *  创建一个弹出下拉控件
 *
 *  @param frame      尺寸
 *  @param selectData 选择控件的数据源
 *  @param action     点击回调方法
 *  @param animate    是否动画弹出
 */

+(void)addPellTableViewSelectWithWindowFrame:(CGRect)frame selecteData:(NSArray *)selectData images:(NSArray *)images action:(void(^)(NSInteger index))action animated:(BOOL)animate;

+(void)hiden;

@end
