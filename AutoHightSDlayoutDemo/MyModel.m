//
//  MyModel.m
//  AutoHightSDlayoutDemo
//
//  Created by MacOS on 2018/7/9.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "MyModel.h"

@implementation MyModel
-(instancetype)initWithDictionary:(NSDictionary *)dictionary{
    
    self = [super init];
    
    if (self) {
        
        self.name = [NSString stringWithFormat:@"%@",dictionary[@"name"]];
        self.pubtext = [NSString stringWithFormat:@"%@",dictionary[@"pubtext"]];
        self.pubtime = [NSString stringWithFormat:@"%@",dictionary[@"pubtime"]];
        self.headimg = [NSString stringWithFormat:@"%@",dictionary[@"headimg"]];
        self.pubimgarrays = [NSArray arrayWithArray:dictionary[@"pubimgarrays"]];
        self.datatype = [NSString stringWithFormat:@"%@",dictionary[@"datatype"]];
        self.comments = [NSString stringWithFormat:@"%@",dictionary[@"comments"]];
    }
    
    return self;
}
+(instancetype)modelWithDictionary:(NSDictionary *)dictionary{
    
    return [[self alloc] initWithDictionary:dictionary];
}
@end
