//
//  FriendCircleTableViewCell.h
//  AutoHightSDlayoutDemo
//
//  Created by MacOS on 2018/7/9.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModel.h"
#import "SDAutoLayout.h"

@interface FriendCircleTableViewCell : UITableViewCell
@property (nonatomic,strong) UILabel *name;
@property (nonatomic,strong) UILabel *pubtime;
@property (nonatomic,strong) UILabel *pubtext;
@property (nonatomic,strong) UIImageView *headimg;
@property (nonatomic,strong) NSArray *pubimgarrays;
@property (nonatomic,strong) UILabel *comments;
@property (nonatomic,assign) int datatype;

@property (nonatomic,strong) UIView *pubimgarrayView;
@property (nonatomic,strong) MyModel *model;


@end
