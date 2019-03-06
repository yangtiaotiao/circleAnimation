//
//  ViewController.m
//  circleAnimation
//
//  Created by Yang on 2019/3/6.
//  Copyright © 2019 YZW. All rights reserved.
//

#import "ViewController.h"
#import "UIView+circleAnimation.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UIButton *b1;
@property (strong, nonatomic) IBOutlet UIButton *b2;
@property (strong, nonatomic) IBOutlet UIButton *b3;
@property (strong, nonatomic) IBOutlet UIButton *b4;


@end

@implementation ViewController
{
    CGFloat  origin_x;
    CGFloat  origin_y;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    origin_x = 150;
    origin_y = 45;
    
}


- (IBAction)b2action:(UIButton *)sender {
    
    NSLog(@"%ld",(long)sender.tag);
    
    CGFloat scale;
    
    if (sender.center.x > origin_x && sender.center.y == origin_y) {
        scale = 3;
    } else if (sender.center.x == origin_x && sender.center.y > origin_y) {
        scale = 2;
    } else if (sender.center.x < origin_x && sender.center.y == origin_y) {
        scale = 1;
    } else {
        scale = 0;
    }
    
    [_b1 createCircleAnimationWithCircleCenter:CGPointMake(150, 45) offset:scale];
    [_b2 createCircleAnimationWithCircleCenter:CGPointMake(150, 45) offset:scale];
    [_b3 createCircleAnimationWithCircleCenter:CGPointMake(150, 45) offset:scale];
    [_b4 createCircleAnimationWithCircleCenter:CGPointMake(150, 45) offset:scale];
    
}




@end

