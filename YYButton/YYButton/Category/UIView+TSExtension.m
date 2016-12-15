
#import "UIView+TSExtension.h"

@implementation UIView (TSExtension)
+ (instancetype)viewFromNib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (void)setTS_x:(CGFloat)TS_x
{
    CGRect frame = self.frame;
    frame.origin.x = TS_x;
    self.frame = frame;
}

- (CGFloat)TS_x
{
    return self.frame.origin.x;
}

- (void)setTS_y:(CGFloat)TS_y
{
    CGRect frame = self.frame;
    frame.origin.y = TS_y;
    self.frame = frame;
}

- (CGFloat)TS_y
{
    return self.frame.origin.y;
}

- (void)setTS_width:(CGFloat)TS_width
{
    CGRect frame = self.frame;
    frame.size.width = TS_width;
    self.frame = frame;
}

- (CGFloat)TS_width
{
    return self.frame.size.width;
}

- (void)setTS_height:(CGFloat)TS_height
{
    CGRect frame = self.frame;
    frame.size.height = TS_height;
    self.frame = frame;
}

- (CGFloat)TS_height
{
    return self.frame.size.height;
}

-(void)setTS_centerX:(CGFloat)TS_centerX
{
    CGPoint center = self.center;
    center.x = TS_centerX;
    self.center = center;
}

- (CGFloat)TS_centerX
{
    return self.center.x;
}

-(void)setTS_centerY:(CGFloat)TS_centerY
{
    CGPoint center = self.center;
    center.y = TS_centerY;
    self.center = center;
}

- (CGFloat)TS_centerY
{
    return self.center.y;
}

- (void)setTS_right:(CGFloat)TS_right
{
    self.TS_x = TS_right - self.TS_width;
}

- (CGFloat)TS_right
{
    return CGRectGetMaxX(self.frame);
}

- (void)setTS_buttom:(CGFloat)TS_buttom
{
    self.TS_y = TS_buttom - self.TS_height;
}

- (CGFloat)TS_buttom
{
    return CGRectGetMaxY(self.frame);
}

- (void)setTS_size:(CGSize)TS_size
{
    CGRect frame = self.frame;
    frame.size = TS_size;
    self.frame = frame;
}

- (CGSize)TS_size
{
    return self.frame.size;
}

- (void)setTS_orign:(CGPoint)TS_orign
{
    CGRect frame = self.frame;
    frame.origin = TS_orign;
    self.frame = frame;
}
- (CGPoint)TS_orign
{
    return self.frame.origin;
}
@end
