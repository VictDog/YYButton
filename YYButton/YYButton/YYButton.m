//
//  YYButton.m
//  YYButton
//
//  Created by Mac on 2016/12/15.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "YYButton.h"
#import "UIView+TSExtension.h"

@implementation YYButton

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:12.0];
        [self setBackgroundColor:[UIColor whiteColor]];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    // 图片在上，标题在下， 其他情况大家可以自己补全
    self.imageView.TS_width = self.TS_width * 0.4;
    self.imageView.TS_height = self.imageView.TS_width;
    self.imageView.TS_y = self.TS_height * 0.15;
    self.imageView.TS_centerX = self.TS_width * 0.5;
    
    self.titleLabel.TS_width = self.TS_width;
    self.titleLabel.TS_y = self.imageView.TS_buttom ;
    self.titleLabel.TS_height = 25;
    self.titleLabel.TS_x = 0;
}

@end
