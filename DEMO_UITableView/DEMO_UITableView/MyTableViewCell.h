//
//  MyTableViewCell.h
//  DEMO_UITableView
//
//  Created by charles on 2017/4/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (nonatomic, strong)UIImageView *logoImageView;//门店logo图片
@property (nonatomic, strong)UILabel *storeName;//门店名
@property (nonatomic, strong)UIImageView *starImageView;//星星图片
@property (nonatomic, strong)UILabel *saleCountLabel;//月售
@property (nonatomic, strong)UILabel *saleDescriptionLabel;//配送说明
@property (nonatomic, strong)UILabel *distanceLabel;//距离

@end
