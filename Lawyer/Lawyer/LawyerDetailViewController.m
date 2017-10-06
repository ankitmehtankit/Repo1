//
//  LawyerDetailViewController.m
//  Lawyer
//
//  Created by Pastel Dreams on 06/10/17.
//  Copyright © 2017 Ankit Mehta. All rights reserved.
//

#import "LawyerDetailViewController.h"

@interface LawyerDetailViewController ()

@end

@implementation LawyerDetailViewController
@synthesize dictLawyerDetail;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"DictLawyerDetail= %@",dictLawyerDetail);
    [self animateLayer];
    [gradientView.layer setCornerRadius:20.0f];
    [gradientView setClipsToBounds:YES];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)animateLayer
{
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = CGRectMake(0, 0, self.view.bounds.size.width-100, gradientView.bounds.size.height);
    [gradientView.layer insertSublayer:gradient atIndex:0];

    NSArray *fromColors = @[(id)[UIColor greenColor].CGColor,(id)[UIColor greenColor].CGColor];;
    NSArray *toColors = @[(id)[UIColor yellowColor].CGColor,(id)[UIColor yellowColor].CGColor];
    gradient.startPoint = CGPointMake(0.0, 0.5);
    gradient.endPoint = CGPointMake(1.0, 0.5);

    [gradient setColors:toColors];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"colors"];
    
    animation.fromValue             = fromColors;
    animation.toValue               = toColors;
    animation.duration              = 1.00;
    animation.removedOnCompletion   = false;
    animation.autoreverses = YES;
    animation.repeatCount = HUGE_VALF;
    animation.fillMode              = kCAFillModeForwards;
    animation.timingFunction        = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    // Add the animation to our layer
    
    [gradient addAnimation:animation forKey:@"animateGradient"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)onClickBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
