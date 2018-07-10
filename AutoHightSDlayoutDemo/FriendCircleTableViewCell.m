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
    
    NSLog(@"setUI");

    [self.contentView addSubview:self.headimg];
    [self.contentView addSubview:self.name];
    [self.contentView addSubview:self.pubtext];
    [self.contentView addSubview:self.pubimgarrayView];
    [self.contentView addSubview:self.comments];
    [self.pubimgarrayView addSubview:self.imageView1];
    
    
    //[self.contentView sd_addSubviews:@[self.headimg,self.name,self.pubtext,self.pubimgarrayView,self.comments]];
    
    //[self.comments setSingleLineAutoResizeWithMaxWidth:200];
}
- (void)setModel:(MyModel *)model{
    
    NSLog(@"setModel");
    
    _model = model;
    
    self.name.text = model.name;
    self.pubtime.text = model.pubtime;
    [self.headimg sd_setImageWithURL:[NSURL URLWithString:model.headimg] placeholderImage:[UIImage imageNamed:@"1"]];
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
    self.pubtext.sd_layout.topSpaceToView(self.headimg, 10).leftSpaceToView(self.contentView, 15 + 40 + 5).rightSpaceToView(self.contentView, 15).autoHeightRatio(0);
    //[self.pubtext setSingleLineAutoResizeWithMaxWidth:200];
    
    NSLog(@"%ld",self.pubimgarrays.count);
    
    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(200);
    
    
//    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(50).heightIs(50);
//    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(50).heightIs(50);
//    self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(50).heightIs(50);
//    self.imageView4.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(50).heightIs(50);
//    self.imageView5.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView4, 5).widthIs(50).heightIs(50);
//    self.imageView6.sd_layout.topSpaceToView(_imageView3, 5).leftSpaceToView(_imageView5, 5).widthIs(50).heightIs(50);
//    self.imageView7.sd_layout.topSpaceToView(_imageView4, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(50).heightIs(50);
//    self.imageView8.sd_layout.topSpaceToView(_imageView5, 5).leftSpaceToView(_imageView7, 5).widthIs(50).heightIs(50);
//    self.imageView9.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView8, 5).widthIs(50).heightIs(50);
//    
//    [self.pubimgarrayView addSubview:self.imageView1];
//    [self.pubimgarrayView addSubview:self.imageView2];
//    [self.pubimgarrayView addSubview:self.imageView3];
//    [self.pubimgarrayView addSubview:self.imageView4];
//    [self.pubimgarrayView addSubview:self.imageView5];
//    [self.pubimgarrayView addSubview:self.imageView6];
//    [self.pubimgarrayView addSubview:self.imageView7];
//    [self.pubimgarrayView addSubview:self.imageView8];
//    [self.pubimgarrayView addSubview:self.imageView9];
    
    for (int i = 0; i < self.pubimgarrays.count; i++) {
        if (self.pubimgarrays[i]) {
            NSString *str = [NSString stringWithFormat:@"imageView%d",i];
            UIImageView * img = (UIImageView *)NSClassFromString(str);
            [img sd_setImageWithURL:[NSURL URLWithString:self.pubimgarrays[i]] placeholderImage:[UIImage imageNamed:@"1"]];
            img.hidden = NO;
        }
    }

//    switch (self.pubimgarrays.count) {
//        case 1:
//            self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(60);
//
//            break;
//        case 2:
//
//            break;
//        case 3:
//
//            break;
//        case 4:
//
//            break;
//        case 5:
//
//            break;
//        case 6:
//
//            break;
//        case 7:
//
//            break;
//        case 8:
//
//            break;
//        case 9:
//
//            break;
//
//        default:
//            break;
//    }
//
//
//    if (self.pubimgarrays.count >= 7 && self.pubimgarrays.count <= 9) {
//
//        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(200);
//
//        int numcount = 0;
//
//        for (int i = 0; i < 3; i++) {
//
//            for (int j = 0; j < 3; j++) {
//
//                if (numcount > self.pubimgarrays.count) {
//                    break;
//                }
//
//                UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(5 + 5 * j + 50 * j,5 +5 * i + i * 50, 50, 50)];
//                imageview.backgroundColor = [UIColor blueColor];
//                [self.pubimgarrayView addSubview:imageview];
//                numcount++;
//            }
//
//        }
//
//    }else if(self.pubimgarrays.count >0 && self.pubimgarrays.count<= 3){
//
//        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(60);
//
//
//            for (int j = 0; j < self.pubimgarrays.count; j++) {
//
//                UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(5 + 5 * j + 50 * j,5, 50, 50)];
//                imageview.backgroundColor = [UIColor blueColor];
//                [self.pubimgarrayView addSubview:imageview];
//            }
//
//
//    }else if(self.pubimgarrays.count >3 && self.pubimgarrays.count <=6){
//
//        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(120);
//
//        int count = 0;
//
//        for (int i = 0; i < 2; i++) {
//
//            for (int j = 0; j < 3; j++) {
//
//                if (count > self.pubimgarrays.count) {
//                    break;
//                }
//
//                UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(5 + 5 * j + 50 * j,5 +5 * i + i * 50, 50, 50)];
//                imageview.backgroundColor = [UIColor blueColor];
//                [self.pubimgarrayView addSubview:imageview];
//                count++;
//            }
//        }
//
//    }else if(self.pubimgarrays.count >9){
//
//        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(200);
//
//        for (int i = 0; i < 3; i++) {
//
//            for (int j = 0; j < 3; j++) {
//
//                UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(5 + 5 * j + 50 * j,5 +5 * i + i * 50, 50, 50)];
//                imageview.backgroundColor = [UIColor blueColor];
//                [self.pubimgarrayView addSubview:imageview];
//
//                if (i == 2) {
//                    UILabel *more = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
//                    more.text = [NSString stringWithFormat:@"%ld",self.pubimgarrays.count];
//                    more.font = [UIFont systemFontOfSize:20];
//                    more.textColor = [UIColor lightGrayColor];
//                    more.center = imageview.center;
//                    [imageview addSubview:more];
//                }
//            }
//
//        }
//
//    }else{
//
//        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 0).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(0);
//    }
    
    self.comments.sd_layout.topSpaceToView(self.pubimgarrayView, 10).leftSpaceToView(self.contentView, 15+40+5).rightSpaceToView(self.contentView, 15).autoHeightRatio(0);
    
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
       // _name.backgroundColor = [UIColor yellowColor];
    }
    return _name;
}
-(UILabel *)comments{
    
    if (!_comments) {
        _comments = [[UILabel alloc] init];
        _comments.font = [UIFont systemFontOfSize:12];
        _comments.backgroundColor = [UIColor colorWithRed:246/255.0 green:246/255.0 blue:246/255.0 alpha:1];
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
        //_pubtext.backgroundColor = [UIColor blueColor];
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
-(UIImageView *)imageView1{
    if (!_imageView1) {
        _imageView1 = [[UIImageView alloc]init];
        _imageView1.backgroundColor = [UIColor orangeColor];
        _imageView1.hidden = YES;
    }
    return _imageView1;
}
-(UIImageView *)imageView2{
    if (!_imageView2) {
        _imageView2 = [[UIImageView alloc]init];
        _imageView2.backgroundColor = [UIColor orangeColor];
        _imageView2.hidden = YES;
    }
    return _imageView2;
}
-(UIImageView *)imageView3{
    if (!_imageView3) {
        _imageView3 = [[UIImageView alloc]init];
        _imageView3.backgroundColor = [UIColor orangeColor];
        _imageView3.hidden = YES;
    }
    return _imageView3;
}
-(UIImageView *)imageView4{
    if (!_imageView4) {
        _imageView4 = [[UIImageView alloc]init];
        _imageView4.backgroundColor = [UIColor orangeColor];
        _imageView4.hidden = YES;
    }
    return _imageView4;
}
-(UIImageView *)imageView5{
    if (!_imageView5) {
        _imageView5 = [[UIImageView alloc]init];
        _imageView5.backgroundColor = [UIColor orangeColor];
        _imageView5.hidden = YES;
    }
    return _imageView5;
}
-(UIImageView *)imageView6{
    if (!_imageView6) {
        _imageView6 = [[UIImageView alloc]init];
        _imageView6.backgroundColor = [UIColor orangeColor];
        _imageView6.hidden = YES;
    }
    return _imageView6;
}
-(UIImageView *)imageView7{
    if (!_imageView7) {
        _imageView7 = [[UIImageView alloc]init];
        _imageView7.backgroundColor = [UIColor orangeColor];
        _imageView7.hidden = YES;
    }
    return _imageView7;
}
-(UIImageView *)imageView8{
    if (!_imageView8) {
        _imageView8 = [[UIImageView alloc]init];
        _imageView8.backgroundColor = [UIColor orangeColor];
        _imageView8.hidden = YES;
    }
    return _imageView8;
}
-(UIImageView *)imageView9{
    if (!_imageView9) {
        _imageView9 = [[UIImageView alloc]init];
        _imageView9.backgroundColor = [UIColor orangeColor];
        _imageView9.hidden = YES;
    }
    return _imageView9;
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
