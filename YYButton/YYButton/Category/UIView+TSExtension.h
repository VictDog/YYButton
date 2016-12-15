//
//  UIView+TSLExtension.h

//  Created by Mac on 15/11/5.
//  Copyright © 2015年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TSExtension)
@property (nonatomic, assign) CGFloat TS_x;
@property (nonatomic, assign) CGFloat TS_y;
@property (nonatomic, assign) CGFloat TS_width;
@property (nonatomic, assign) CGFloat TS_height;
@property (nonatomic, assign) CGFloat TS_centerX;
@property (nonatomic, assign) CGFloat TS_centerY;
@property (nonatomic, assign) CGFloat TS_right;
@property (nonatomic, assign) CGFloat TS_buttom;
@property (nonatomic, assign) CGSize  TS_size;
@property (nonatomic, assign) CGPoint TS_orign;

+ (instancetype)viewFromNib;
@end
