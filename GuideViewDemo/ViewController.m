//
//  ViewController.m
//  GuideViewDemo
//
//  Created by 赛峰 施 on 16/8/16.
//  Copyright © 2016年 赛峰 施. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *button1;
@property (nonatomic, weak) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *backgroundView = [[UIView alloc] initWithFrame:self.view.frame];
    backgroundView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.6];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.view.frame];
    UIBezierPath *circlePath1 = [UIBezierPath bezierPathWithArcCenter:self.button1.center radius:(self.button1.frame.size.height/2 + 5) startAngle:0.0 endAngle:2*M_PI clockwise:NO];
    UIBezierPath *circlePath2 = [UIBezierPath bezierPathWithArcCenter:self.button2.center radius:(self.button2.frame.size.width/2 + 5) startAngle:0.0 endAngle:2*M_PI clockwise:NO];
    
    [path appendPath:circlePath1];
    [path appendPath:circlePath2];
    /*method one*/
//    CAShapeLayer *layer = [CAShapeLayer layer];
//    layer.path = path.CGPath;
//    
//    backgroundView.layer.mask = layer;
//    [self.view addSubview:backgroundView];
    
    /*method two*/
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    
    layer.fillColor = [UIColor colorWithWhite:0.0 alpha:0.6].CGColor;
    [self.view.layer addSublayer:layer];
}


@end
