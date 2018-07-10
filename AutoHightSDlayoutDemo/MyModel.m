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
        NSString *dicStr = [NSString stringWithFormat:@"%@",dictionary[@"pubimgarrays"]];
//        if (dicStr != nil && dictionary[@"pubimgarrays"] != [NSNull class] && dicStr != [NSNull class] && dicStr.length != 0 && dictionary[@"pubimgarrays"] == [NSArray class]){
        
            self.pubimgarrays = [NSArray arrayWithArray:dictionary[@"pubimgarrays"]];
            
//        }else{
//            
//            self.pubimgarrays = [[NSArray alloc] init];
//        }
    
        self.datatype = [NSString stringWithFormat:@"%@",dictionary[@"datatype"]];
        self.comments = [NSString stringWithFormat:@"%@",dictionary[@"comments"]];
    }
    
    return self;
}
+(instancetype)modelWithDictionary:(NSDictionary *)dictionary{
    
    return [[self alloc] initWithDictionary:dictionary];
}
@end
