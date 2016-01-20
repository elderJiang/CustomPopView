//
//  TableView.m
//  CustumPopView
//
//  Created by newhuidong on 16/1/20.
//  Copyright © 2016年 HuiDong. All rights reserved.
//

#import "TableView.h"
#define LeftView 10.0f
#define TopToView 10.0f

@interface TableView ()<UITabBarDelegate,UITableViewDataSource>
@property(nonatomic,copy)NSArray * selectData;
@property(nonatomic,copy)void(^action)(NSInteger index);
@property(nonatomic,copy)NSArray * imagesData;
@end

TableView * backGroundView;
UITableView *tableView;

@implementation TableView
-(instancetype)init{
    
    if (self=[super init]) {
    }
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    if (self=[super initWithCoder:aDecoder]) {
        
    }
    return self;
}
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        
        
    }
    return self;
    
}
+(void)addPellTableViewSelectWithWindowFrame:(CGRect)frame selecteData:(NSArray *)selectData images:(NSArray *)images action:(void (^)(NSInteger))action animated:(BOOL)animate{
    
    if (backGroundView!=nil ){
        
        [TableView hiden];
    }
    UIWindow * win=[[[UIApplication sharedApplication]windows]firstObject];
    backGroundView=[[TableView alloc]initWithFrame:win.bounds];
    backGroundView.action=action;
    backGroundView.imagesData=images;
    backGroundView.selectData=selectData;
    backGroundView.backgroundColor=[UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0.1];
    [win addSubview:backGroundView];
    
    tableView=[[UITableView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width-80, 70-20*selectData.count, frame.size.width, 40*selectData.count)style:0];
    
    tableView.dataSource=backGroundView;
    tableView.delegate=backGroundView;
    tableView.layer.cornerRadius=10.0f;
    tableView.layer.anchorPoint=CGPointMake(1.0, 0);
    tableView.transform=CGAffineTransformMakeScale(0.0001, 0.0001);
    tableView.rowHeight=40;
    [win addSubview:tableView];
    
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:selectData action:@selector(tapbackgroundClick)];
    
    
    
    
}
@end
