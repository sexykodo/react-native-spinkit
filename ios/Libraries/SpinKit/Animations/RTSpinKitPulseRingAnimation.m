//
//  RTSpinKitPulseRingAnimation.m
//  RNSpinkit
//
//  Created by MVlaptop on 29/11/2016.
//
//

#import "RTSpinKitPulseAnimation.h"

@implementation RTSpinKitPulseAnimation

-(void)setupSpinKitAnimationInLayer:(CALayer*)layer withSize:(CGSize)size color:(UIColor*)color
{
    NSTimeInterval beginTime = CACurrentMediaTime();
    
    CALayer *circle = [CALayer layer];
    circle.frame = CGRectInset(CGRectMake(0.0, 0.0, size.width, size.height), 2.0, 2.0);
    circle.backgroundColor = [UIColor colorWithRed:0.07 green:0.07 blue:0.07 alpha:1.0].CGColor;
    circle.anchorPoint = CGPointMake(0.5, 0.5);
    circle.opacity = 1.0;
    circle.borderWidth = size.width / 10;
    circle.borderColor = color.CGColor;
    circle.cornerRadius = CGRectGetHeight(circle.bounds) * 0.5;
    circle.transform = CATransform3DMakeScale(0.5, 0.5, 0.5);
    
    CAKeyframeAnimation *scaleAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    scaleAnim.values = @[
                         [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 0.0)],
                         [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 0.0)],
                         ];
    
    CAKeyframeAnimation *opacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    opacityAnim.keyTimes = @[@(0.0), @(0.5), @(1.0)];
    opacityAnim.values = @[@(0.0), @(1.0), @(0.0)];
    
    CAAnimationGroup *animGroup = [CAAnimationGroup animation];
    animGroup.removedOnCompletion = NO;
    animGroup.beginTime = beginTime;
    animGroup.repeatCount = HUGE_VALF;
    animGroup.duration = 1.5;
    animGroup.animations = @[scaleAnim, opacityAnim];
    animGroup.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    [layer addSublayer:circle];
    [circle addAnimation:animGroup forKey:@"spinkit-anim"];
}

@end
