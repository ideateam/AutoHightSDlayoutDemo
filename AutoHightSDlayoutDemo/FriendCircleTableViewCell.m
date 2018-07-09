//
//  FriendCircleTableViewCell.m
//  AutoHightSDlayoutDemo
//
//  Created by MacOS on 2018/7/9.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "FriendCircleTableViewCell.h"
#define SCW

@implementation FriendCircleTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self setUI];
    }
    return self;
}
-(void)setUI{
    
    [self.contentView addSubview:self.headimg];
    [self.contentView addSubview:self.name];
    [self.contentView addSubview:self.pubtext];
    [self.contentView addSubview:self.pubimgarrayView];
    [self.contentView addSubview:self.comments];
    
    
    
    //[self.contentView sd_addSubviews:@[self.headimg,self.name,self.pubtext,self.pubimgarrayView,self.comments]];
    
    //[self.comments setSingleLineAutoResizeWithMaxWidth:200];
}
- (void)setModel:(MyModel *)model{
    
    _model = model;
    
    self.name.text = model.name;
    self.pubtime.text = model.pubtime;
    self.headimg.image = [UIImage imageNamed:[NSString stringWithContentsOfURL:[NSURL URLWithString:model.headimg] encoding:NSUTF8StringEncoding error:nil]];
    self.pubtext.text = model.pubtext;
    self.pubimgarrays = model.pubimgarrays;
    self.datatype =(int)model.datatype;
    self.comments.text = model.comments;

    
    [self setUILayout];
    

    [self setupAutoHeightWithBottomView:self.comments bottomMargin:10];
}
-(void)setUILayout{
    
    self.headimg.sd_layout.topSpaceToView(self.contentView, 5).leftSpaceToView(self.contentView, 15).widthIs(40).heightIs(40);
    self.name.sd_layout.topSpaceToView(self.contentView, 5).leftSpaceToView(self.headimg, 5).widthIs(100).heightIs(40);
    self.pubtext.sd_layout.topSpaceToView(self.headimg, 10).leftSpaceToView(self.contentView, 15).rightSpaceToView(self.contentView, 15).autoHeightRatio(0);
    //[self.pubtext setSingleLineAutoResizeWithMaxWidth:200];
    
    NSLog(@"%ld",self.pubimgarrays.count);
    
    if (self.pubimgarrays.count > 3) {
        
        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15).rightSpaceToView(self.contentView, 15).heightIs(200);
        
        for (int i = 0; i < 3; i++) {
          
            for (int j = 0; j < 3; j++) {
                
                UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(5 + 5 * j + 60 * j,5 +5 * i + i * 60, 60, 60)];
                imageview.backgroundColor = [UIColor blueColor];
                [self.pubimgarrayView addSubview:imageview];
            }
            
        }
        
    }else{
        
        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15).rightSpaceToView(self.contentView, 15).heightIs(100);
        
        for (int i = 0; i < 1; i++) {
            
            for (int j = 0; j < 1; j++) {
                
                UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(5 + 5 * j + 60 * j,5 * i + i * 60, 60, 60)];
                imageview.backgroundColor = [UIColor blueColor];
                [self.pubimgarrayView addSubview:imageview];
            }
            
        }
    }
    
    self.comments.sd_layout.topSpaceToView(self.pubimgarrayView, 10).leftSpaceToView(self.contentView, 15).rightSpaceToView(self.contentView, 15).autoHeightRatio(0);
    
}
-(UIView *)pubimgarrayView{
    
    if (!_pubimgarrayView) {
        _pubimgarrayView = [[UIView alloc] init];
        _pubimgarrayView.backgroundColor = [UIColor redColor];
    }
    return _pubimgarrayView;
}
-(UILabel *)name{
    
    if (!_name) {
        _name = [[UILabel alloc] init];
        _name.backgroundColor = [UIColor yellowColor];
    }
    return _name;
}
-(UILabel *)comments{
    
    if (!_comments) {
        _comments = [[UILabel alloc] init];
        _comments.font = [UIFont systemFontOfSize:12];
        _comments.backgroundColor = [UIColor lightGrayColor];
    }
    return _comments;
}
-(UILabel *)pubtime{
    
    if (!_pubtime) {
        _pubtime = [[UILabel alloc] init];
        _pubtime.font = [UIFont systemFontOfSize:12];
        _pubtime.backgroundColor = [UIColor purpleColor];
    }
    return _pubtime;
}
-(UILabel *)pubtext{
    
    if (!_pubtext) {
        _pubtext = [[UILabel alloc] init];
        _pubtext.font = [UIFont systemFontOfSize:14];
        _pubtext.backgroundColor = [UIColor blueColor];
    }
    return _pubtext;
}
-(UIImageView *)headimg{
    
    if (!_headimg) {
        _headimg = [[UIImageView alloc] init];
        _headimg.backgroundColor = [UIColor redColor];
    }
    return _headimg;
}
-(NSArray *)pubimgarrays{
    if (!_pubimgarrays) {
        _pubimgarrays = [[NSArray alloc] init];
    }
    return _pubimgarrays;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
