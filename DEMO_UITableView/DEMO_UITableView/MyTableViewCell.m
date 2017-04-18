//
//  MyTableViewCell.m
//  DEMO_UITableView
//
//  Created by charles on 2017/4/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configUI];
    }
    return self;
}

-(void)configUI{
    _logoImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 70, 70)];
    [self.contentView addSubview:_logoImageView];
    
    _storeNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(90, 10, 150, 20)];
    [self.contentView addSubview:_storeNameLabel];
    
    _starImageView = [[UIImageView alloc]initWithFrame:CGRectMake(90, 30, 70, 15)];
    [self.contentView addSubview:_starImageView];
    
    _saleCountLabel = [[UILabel alloc]initWithFrame:CGRectMake(170, 30, 100, 15)];
    _saleCountLabel.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:_saleCountLabel];
    
    _saleDescriptionLabel = [[UILabel alloc]initWithFrame:CGRectMake(90, 50, 150, 20)];
    [self.contentView addSubview:_saleDescriptionLabel];
    
    _distanceLabel = [[UILabel alloc]initWithFrame:CGRectMake(270, 50, 50, 20)];
    [self.contentView addSubview:_distanceLabel];
    
    
}

-(void)setContentWithDict:(NSDictionary *)dict{
    _logoImageView.image = [UIImage imageNamed:dict[@"logo"]];
    _storeNameLabel.text = dict[@"name"];
    _starImageView.image = [UIImage imageNamed:dict[@"star"]];
    _saleCountLabel.text = dict[@"saleCount"];
    _saleDescriptionLabel.text = dict[@"desc"];
    _distanceLabel.text = dict[@"distance"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
