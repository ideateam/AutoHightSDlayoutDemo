//
//  ViewController.m
//  AutoHightSDlayoutDemo
//
//  Created by MacOS on 2018/7/9.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "ViewController.h"
#import "FriendCircleTableViewCell.h"
#import "MyModel.h"
#import "SDAutoLayout.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tableView];
    [self getData];
}
-(void)getData{
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"API" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *rootDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    for (NSDictionary *dic in [rootDic valueForKey:@"data"]) {
        MyModel *model = [MyModel modelWithDictionary:dic];
        [array addObject:model];
    }
    self.dataArray = [NSArray arrayWithArray:array];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FriendCircleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FriendCircleTableViewCellID"];
    
//    if (cell == nil) {
//        cell = [[FriendCircleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FriendCircleTableViewCellID"];
//    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = _dataArray[indexPath.row];
    //[cell setModel:cell.model];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    id model = self.dataArray[indexPath.row];
    
    return [self.tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[FriendCircleTableViewCell class] contentViewWidth:[self cellContentViewWith]];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArray.count;
}
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[FriendCircleTableViewCell class] forCellReuseIdentifier:@"FriendCircleTableViewCellID"];
    }
    return _tableView;
}
-(NSArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSArray alloc] init];
        
    }
    return _dataArray;
}
- (CGFloat)cellContentViewWith
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    // 适配ios7横屏
    if ([UIApplication sharedApplication].statusBarOrientation != UIInterfaceOrientationPortrait && [[UIDevice currentDevice].systemVersion floatValue] < 8) {
        width = [UIScreen mainScreen].bounds.size.height;
    }
    return width;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
