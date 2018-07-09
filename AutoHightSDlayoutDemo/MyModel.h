//
//  MyModel.h
//  AutoHightSDlayoutDemo
//
//  Created by MacOS on 2018/7/9.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyModel : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *pubtime;
@property (nonatomic,copy) NSString *pubtext;
@property (nonatomic,copy) NSString *headimg;
@property (nonatomic,strong) NSArray *pubimgarrays;
@property (nonatomic,copy) NSString *comments;
@property (nonatomic,copy) NSString *datatype;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
+(instancetype)modelWithDictionary:(NSDictionary *)dictionary;
@end
