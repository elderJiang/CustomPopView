//
//  leftMenuVC.m
//  justGo
//
//  Created by newhuidong on 16/1/25.
//  Copyright © 2016年 HuiDong. All rights reserved.
//

#import "leftMenuVC.h"
#import "AppDelegate.h"

@interface leftMenuVC ()<UITableViewDataSource,UITableViewDelegate>;

@property(nonatomic,strong)NSDictionary *dic;


@end

@implementation leftMenuVC

-(void)viewDidLoad{
    
    [super viewDidLoad];
    CGRect frame=[UIScreen mainScreen].bounds;
    
    self.tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height) style:UITableViewStylePlain];
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    
    [self.view addSubview:self.tableView];
}

-(NSDictionary *)dic{
    
    if (!_dic) {
        
        _dic=@{@"111":@"222",@"333":@"444"};
        
        
    }
    return _dic;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 8;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * identifer=@"cell";
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell==nil) {
        
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
        
        
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    NSArray * array=[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8", nil];
    
    cell.textLabel.text=array[indexPath.row];
    
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    AppDelegate * tempAppDelegate=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    
    UIStoryboard * story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    
    
    
    
}





@end


