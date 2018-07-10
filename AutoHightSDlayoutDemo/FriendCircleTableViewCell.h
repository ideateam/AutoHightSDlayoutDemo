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
#import <SDWebImage/UIImageView+WebCache.h>

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

//图片
@property (nonatomic,strong) UIImageView *imageView1;
@property (nonatomic,strong) UIImageView *imageView2;
@property (nonatomic,strong) UIImageView *imageView3;
@property (nonatomic,strong) UIImageView *imageView4;
@property (nonatomic,strong) UIImageView *imageView5;
@property (nonatomic,strong) UIImageView *imageView6;
@property (nonatomic,strong) UIImageView *imageView7;
@property (nonatomic,strong) UIImageView *imageView8;
@property (nonatomic,strong) UIImageView *imageView9;



@end
