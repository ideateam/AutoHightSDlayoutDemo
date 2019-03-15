//
//  MyModel.h
//  AutoHightSDlayoutDemo
//
//  Created by MacOS on 2018/7/9.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyModel : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *pubtime;
@property (nonatomic,strong) NSString *pubtext;
@property (nonatomic,strong) NSString *headimg;
@property (nonatomic,strong) NSArray *pubimgarrays;
@property (nonatomic,strong) NSString *comments;
@property (nonatomic,strong) NSString *datatype;
@property (nonatomic,strong) NSArray *commentsArr;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
+(instancetype)modelWithDictionary:(NSDictionary *)dictionary;
@end
