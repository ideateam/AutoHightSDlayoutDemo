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
    [self.contentView addSubview:self.pubtime];
    [self.contentView addSubview:self.pubimgarrayView];
    [self.contentView addSubview:self.comments];
    
    [self.pubimgarrayView addSubview:self.imageView1];
    [self.pubimgarrayView addSubview:self.imageView2];
    [self.pubimgarrayView addSubview:self.imageView3];
    [self.pubimgarrayView addSubview:self.imageView4];
    [self.pubimgarrayView addSubview:self.imageView5];
    [self.pubimgarrayView addSubview:self.imageView6];
    [self.pubimgarrayView addSubview:self.imageView7];
    [self.pubimgarrayView addSubview:self.imageView8];
    [self.pubimgarrayView addSubview:self.imageView9];
    
    
    
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
    self.pubimgarrays = [NSArray arrayWithArray:model.pubimgarrays];
    self.datatype =(int)model.datatype;
    self.comments.text = model.comments;

    
    
    if (self.pubimgarrays != nil && self.pubimgarrays.count != 0 && ![self.pubimgarrays isKindOfClass:[NSNull class]]) {
        
        if (self.pubimgarrays.count > 9) {
            
            [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView4 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[3]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView5 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[4]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView6 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[5]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView7 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[6]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView8 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[7]]] placeholderImage:[UIImage imageNamed:@"1"]];
            [self.imageView9 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[8]]] placeholderImage:[UIImage imageNamed:@"1"]];
            
            [self.imageView9 addSubview:self.imageViewMoreBtn];
            
        }else{
        
        
            switch (self.pubimgarrays.count) {
                case 1:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];

                    break;
                case 2:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];

                    break;
                case 3:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];

                    break;
                case 4:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView4 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[3]]] placeholderImage:[UIImage imageNamed:@"1"]];

                    break;
                case 5:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView4 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[3]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView5 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[4]]] placeholderImage:[UIImage imageNamed:@"1"]];

                    break;
                case 6:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView4 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[3]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView5 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[4]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView6 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[5]]] placeholderImage:[UIImage imageNamed:@"1"]];

                    break;
                case 7:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView4 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[3]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView5 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[4]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView6 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[5]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView7 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[6]]] placeholderImage:[UIImage imageNamed:@"1"]];

                    break;
                case 8:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView4 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[3]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView5 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[4]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView6 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[5]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView7 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[6]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView8 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[7]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    
                    break;
                case 9:
                    [self.imageView1 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[0]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView2 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[1]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView3 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[2]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView4 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[3]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView5 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[4]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView6 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[5]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView7 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[6]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView8 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[7]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    [self.imageView9 sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.pubimgarrays[8]]] placeholderImage:[UIImage imageNamed:@"1"]];
                    break;
                    
                default:
                    break;
            }
        }
    }else{
        
       // _pubimgarrayView.hidden = YES;
        
    }
    
    [self setUILayout];

    [self setupAutoHeightWithBottomView:self.comments bottomMargin:10];
}
-(void)setUILayout{
    
     NSLog(@"setUILayout %ld",self.pubimgarrays.count);
    
    
    self.headimg.sd_layout.topSpaceToView(self.contentView, 5).leftSpaceToView(self.contentView, 15).widthIs(40).heightIs(40);
    self.name.sd_layout.topSpaceToView(self.contentView, 5).leftSpaceToView(self.headimg, 5).rightSpaceToView(self.contentView, 15).heightIs(40);
    self.pubtime.sd_layout.topSpaceToView(self.name, 0).leftSpaceToView(self.headimg, 5).rightSpaceToView(self.contentView, 15).heightIs(20);
    self.pubtext.sd_layout.topSpaceToView(self.pubtime, 10).leftSpaceToView(self.contentView, 15 + 40 + 5).rightSpaceToView(self.contentView, 15).autoHeightRatio(0);
    //[self.pubtext setSingleLineAutoResizeWithMaxWidth:200];
    
    
    //判断有几张图片 最多九张
    if (self.pubimgarrays != nil && self.pubimgarrays.count != 0 && ![self.pubimgarrays isKindOfClass:[NSNull class]]) {
        
        if (self.pubimgarrays.count > 9) {
            
            self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(200);
            
            self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
            self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
            self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(60).heightIs(60);
            self.imageView4.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
            self.imageView5.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView4, 5).widthIs(60).heightIs(60);
            self.imageView6.sd_layout.topSpaceToView(_imageView3, 5).leftSpaceToView(_imageView5, 5).widthIs(60).heightIs(60);
            self.imageView7.sd_layout.topSpaceToView(_imageView4, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
            self.imageView8.sd_layout.topSpaceToView(_imageView5, 5).leftSpaceToView(_imageView7, 5).widthIs(60).heightIs(60);
            self.imageView9.sd_layout.topSpaceToView(_imageView6, 5).leftSpaceToView(_imageView8, 5).widthIs(60).heightIs(60);
            
            self.imageView1.hidden = NO;
            self.imageView2.hidden = NO;
            self.imageView3.hidden = NO;
            self.imageView4.hidden = NO;
            self.imageView5.hidden = NO;
            self.imageView6.hidden = NO;
            self.imageView7.hidden = NO;
            self.imageView8.hidden = NO;
            self.imageView9.hidden = NO;
            
            [self.imageView9 addSubview:self.imageViewMoreBtn];
            
        }else{
    
    
    
            switch (self.pubimgarrays.count) {
                case 1:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(120);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(80).heightIs(110);
                    
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = YES;
                    self.imageView3.hidden = YES;
                    self.imageView4.hidden = YES;
                    self.imageView5.hidden = YES;
                    self.imageView6.hidden = YES;
                    self.imageView7.hidden = YES;
                    self.imageView8.hidden = YES;
                    self.imageView9.hidden = YES;
    
                    break;
                case 2:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(70);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = YES;
                    self.imageView4.hidden = YES;
                    self.imageView5.hidden = YES;
                    self.imageView6.hidden = YES;
                    self.imageView7.hidden = YES;
                    self.imageView8.hidden = YES;
                    self.imageView9.hidden = YES;
                    
                    break;
                case 3:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(70);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                    self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(60).heightIs(60);
                    
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                    self.imageView4.hidden = YES;
                    self.imageView5.hidden = YES;
                    self.imageView6.hidden = YES;
                    self.imageView7.hidden = YES;
                    self.imageView8.hidden = YES;
                    self.imageView9.hidden = YES;
                    
                    break;
                case 4:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(135);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                    self.imageView3.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView4.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView3, 5).widthIs(60).heightIs(60);
                    
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                    self.imageView4.hidden = NO;
                    self.imageView5.hidden = YES;
                    self.imageView6.hidden = YES;
                    self.imageView7.hidden = YES;
                    self.imageView8.hidden = YES;
                    self.imageView9.hidden = YES;
                    
                    break;
                case 5:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(135);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                    self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(60).heightIs(60);
                    self.imageView4.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView5.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView4, 5).widthIs(60).heightIs(60);
                    
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                    self.imageView4.hidden = NO;
                    self.imageView5.hidden = NO;
                    self.imageView6.hidden = YES;
                    self.imageView7.hidden = YES;
                    self.imageView8.hidden = YES;
                    self.imageView9.hidden = YES;
                    
                    break;
                case 6:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(135);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                    self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(60).heightIs(60);
                    self.imageView4.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView5.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView4, 5).widthIs(60).heightIs(60);
                    self.imageView6.sd_layout.topSpaceToView(_imageView3, 5).leftSpaceToView(_imageView5, 5).widthIs(60).heightIs(60);
            
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                    self.imageView4.hidden = NO;
                    self.imageView5.hidden = NO;
                    self.imageView6.hidden = NO;
                    self.imageView7.hidden = YES;
                    self.imageView8.hidden = YES;
                    self.imageView9.hidden = YES;
                    
                    break;
                case 7:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(200);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                    self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(60).heightIs(60);
                    self.imageView4.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView5.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView4, 5).widthIs(60).heightIs(60);
                    self.imageView6.sd_layout.topSpaceToView(_imageView3, 5).leftSpaceToView(_imageView5, 5).widthIs(60).heightIs(60);
                    self.imageView7.sd_layout.topSpaceToView(_imageView4, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                    self.imageView4.hidden = NO;
                    self.imageView5.hidden = NO;
                    self.imageView6.hidden = NO;
                    self.imageView7.hidden = NO;
                    self.imageView8.hidden = YES;
                    self.imageView9.hidden = YES;
                    
                    break;
                case 8:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(200);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                    self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(60).heightIs(60);
                    self.imageView4.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView5.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView4, 5).widthIs(60).heightIs(60);
                    self.imageView6.sd_layout.topSpaceToView(_imageView3, 5).leftSpaceToView(_imageView5, 5).widthIs(60).heightIs(60);
                    self.imageView7.sd_layout.topSpaceToView(_imageView4, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView8.sd_layout.topSpaceToView(_imageView5, 5).leftSpaceToView(_imageView7, 5).widthIs(60).heightIs(60);
                    
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                    self.imageView4.hidden = NO;
                    self.imageView5.hidden = NO;
                    self.imageView6.hidden = NO;
                    self.imageView7.hidden = NO;
                    self.imageView8.hidden = NO;
                    self.imageView9.hidden = YES;
                    
                    break;
                case 9:
                    
                    self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(200);
                    
                    self.imageView1.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView2.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView1, 5).widthIs(60).heightIs(60);
                    self.imageView3.sd_layout.topSpaceToView(_pubimgarrayView, 5).leftSpaceToView(_imageView2, 5).widthIs(60).heightIs(60);
                    self.imageView4.sd_layout.topSpaceToView(_imageView1, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView5.sd_layout.topSpaceToView(_imageView2, 5).leftSpaceToView(_imageView4, 5).widthIs(60).heightIs(60);
                    self.imageView6.sd_layout.topSpaceToView(_imageView3, 5).leftSpaceToView(_imageView5, 5).widthIs(60).heightIs(60);
                    self.imageView7.sd_layout.topSpaceToView(_imageView4, 5).leftSpaceToView(_pubimgarrayView, 5).widthIs(60).heightIs(60);
                    self.imageView8.sd_layout.topSpaceToView(_imageView5, 5).leftSpaceToView(_imageView7, 5).widthIs(60).heightIs(60);
                    self.imageView9.sd_layout.topSpaceToView(_imageView6, 5).leftSpaceToView(_imageView8, 5).widthIs(60).heightIs(60);
                    
                    self.imageView1.hidden = NO;
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                    self.imageView4.hidden = NO;
                    self.imageView5.hidden = NO;
                    self.imageView6.hidden = NO;
                    self.imageView7.hidden = NO;
                    self.imageView8.hidden = NO;
                    self.imageView9.hidden = NO;
                    
                    break;
                    
                default:
                    break;
            }
        }
    }else{
        
        self.pubimgarrayView.sd_layout.topSpaceToView(self.pubtext, 10).leftSpaceToView(self.contentView, 15 + 40 +5).rightSpaceToView(self.contentView, 15).heightIs(0);
        self.imageView1.hidden = YES;
        self.imageView2.hidden = YES;
        self.imageView3.hidden = YES;
        self.imageView4.hidden = YES;
        self.imageView5.hidden = YES;
        self.imageView6.hidden = YES;
        self.imageView7.hidden = YES;
        self.imageView8.hidden = YES;
        self.imageView9.hidden = YES;
    }
    

    self.comments.sd_layout.topSpaceToView(self.pubimgarrayView, 10).leftSpaceToView(self.contentView, 15+40+5).rightSpaceToView(self.contentView, 15).autoHeightRatio(0);
    
}
-(void)tapThisPic:(UITapGestureRecognizer *)tap{
    
    NSLog(@"%ld",tap.view.tag);
}
-(UIView *)pubimgarrayView{
    
    if (!_pubimgarrayView) {
        _pubimgarrayView = [[UIView alloc] init];
        _pubimgarrayView.userInteractionEnabled=YES;
        //_pubimgarrayView.backgroundColor = [UIColor redColor];
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
-(UIImageView *)imageView1{
    if (!_imageView1) {
        _imageView1 = [[UIImageView alloc]init];
        _imageView1.backgroundColor = [UIColor orangeColor];
        _imageView1.contentMode = UIViewContentModeScaleAspectFill;
        _imageView1.clipsToBounds = YES;
        _imageView1.tag = 10001;
        _imageView1.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView1 addGestureRecognizer:tap];
        //_imageView1.hidden = YES;
    }
    return _imageView1;
}
-(UIImageView *)imageView2{
    if (!_imageView2) {
        _imageView2 = [[UIImageView alloc]init];
        _imageView2.backgroundColor = [UIColor orangeColor];
        _imageView2.contentMode = UIViewContentModeScaleAspectFill;
        _imageView2.clipsToBounds = YES;
        _imageView2.tag = 10002;
        _imageView2.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView2 addGestureRecognizer:tap];
        //_imageView2.hidden = YES;
    }
    return _imageView2;
}
-(UIImageView *)imageView3{
    if (!_imageView3) {
        _imageView3 = [[UIImageView alloc]init];
        _imageView3.backgroundColor = [UIColor orangeColor];
        _imageView3.contentMode = UIViewContentModeScaleAspectFill;
        _imageView3.clipsToBounds = YES;
        _imageView3.tag = 10003;
        _imageView3.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView3 addGestureRecognizer:tap];
    }
    return _imageView3;
}
-(UIImageView *)imageView4{
    if (!_imageView4) {
        _imageView4 = [[UIImageView alloc]init];
        _imageView4.backgroundColor = [UIColor orangeColor];
        _imageView4.contentMode = UIViewContentModeScaleAspectFill;
        _imageView4.clipsToBounds = YES;
        _imageView4.tag = 10004;
        _imageView4.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView4 addGestureRecognizer:tap];
    }
    return _imageView4;
}
-(UIImageView *)imageView5{
    if (!_imageView5) {
        _imageView5 = [[UIImageView alloc]init];
        _imageView5.backgroundColor = [UIColor orangeColor];
        _imageView5.contentMode = UIViewContentModeScaleAspectFill;
        _imageView5.clipsToBounds = YES;
        _imageView5.tag = 10005;
        _imageView5.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView5 addGestureRecognizer:tap];
    }
    return _imageView5;
}
-(UIImageView *)imageView6{
    if (!_imageView6) {
        _imageView6 = [[UIImageView alloc]init];
        _imageView6.backgroundColor = [UIColor orangeColor];
        _imageView6.contentMode = UIViewContentModeScaleAspectFill;
        _imageView6.clipsToBounds = YES;
        _imageView6.tag = 10006;
        _imageView6.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView6 addGestureRecognizer:tap];
    }
    return _imageView6;
}
-(UIImageView *)imageView7{
    if (!_imageView7) {
        _imageView7 = [[UIImageView alloc]init];
        _imageView7.backgroundColor = [UIColor orangeColor];
        _imageView7.contentMode = UIViewContentModeScaleAspectFill;
        _imageView7.clipsToBounds = YES;
        _imageView7.tag = 10007;
        _imageView7.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView7 addGestureRecognizer:tap];
    }
    return _imageView7;
}
-(UIImageView *)imageView8{
    if (!_imageView8) {
        _imageView8 = [[UIImageView alloc]init];
        _imageView8.backgroundColor = [UIColor orangeColor];
        _imageView8.contentMode = UIViewContentModeScaleAspectFill;
        _imageView8.clipsToBounds = YES;
        _imageView8.tag = 10008;
        _imageView8.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView8 addGestureRecognizer:tap];
    }
    return _imageView8;
}
-(UIImageView *)imageView9{
    if (!_imageView9) {
        _imageView9 = [[UIImageView alloc]init];
        _imageView9.backgroundColor = [UIColor orangeColor];
        _imageView9.contentMode = UIViewContentModeScaleAspectFill;
        _imageView9.clipsToBounds = YES;
        _imageView9.tag = 10009;
        _imageView9.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapThisPic:)];
        [_imageView9 addGestureRecognizer:tap];
    }
    return _imageView9;
}
-(UIButton *)imageViewMoreBtn{
    if (!_imageViewMoreBtn) {
        _imageViewMoreBtn = [[UIButton alloc]init];
        _imageViewMoreBtn.frame = CGRectMake(0, 0, 40, 40);
        _imageViewMoreBtn.backgroundColor = [UIColor  colorWithRed:1/123 green:1/23 blue:1/233 alpha:0.4];
        _imageViewMoreBtn.center = CGPointMake(60/2, 60/2);
        [_imageViewMoreBtn setTitle:[NSString stringWithFormat:@"+%ld",_pubimgarrays.count] forState:UIControlStateNormal];
        _imageViewMoreBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //_imageView9.hidden = YES;
    }
    return _imageViewMoreBtn;
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
