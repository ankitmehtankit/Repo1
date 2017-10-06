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
    [gradientView.layer setCornerRadius:25.0f];
    [gradientView setClipsToBounds:YES];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)animateLayer
{
    [gradientView setBackgroundColor:[UIColor whiteColor]];
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = CGRectMake(-1*(self.view.bounds.size.width-100), 0, 7*(self.view.bounds.size.width-100), gradientView.bounds.size.height);
    [gradientView.layer insertSublayer:gradient atIndex:0];

    NSArray *fromColors = @[(id)[UIColor greenColor].CGColor,(id)[UIColor colorWithRed:240.0/255.0 green:240.0/255.0 blue:111.0/255.0 alpha:1.0].CGColor,(id)[UIColor colorWithRed:240.0/255.0 green:240.0/255.0 blue:111.0/255.0 alpha:1.0].CGColor,(id)[UIColor greenColor].CGColor];
//    NSArray *toColors = @[(id)[UIColor yellowColor].CGColor,(id)[UIColor clearColor].CGColor];
    gradient.startPoint = CGPointMake(0.0, 0.5);
    gradient.endPoint = CGPointMake(1.0, 0.5);
    NSArray *fromlocations = [NSArray arrayWithObjects:
                              [NSNumber numberWithFloat:0.0],[NSNumber numberWithFloat:0.5], [NSNumber numberWithFloat:0.6f],[NSNumber numberWithFloat:1.0], nil];;
    NSArray *tolocations = [NSArray arrayWithObjects:
                            [NSNumber numberWithFloat:0.0],[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.0f],[NSNumber numberWithFloat:0.5], nil];//[NSArray arrayWithObjects: [NSNumber numberWithFloat:0.0f], [NSNumber numberWithFloat:0.0f],[NSNumber numberWithFloat:0.0f], nil];;
    gradient.locations = fromlocations;
    [gradient setColors:fromColors];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"locations"];
    animation.beginTime = CACurrentMediaTime() + 1.0;
    animation.fromValue             = fromlocations;
    animation.toValue               = tolocations;
    animation.duration              = 4.00;
    animation.removedOnCompletion   = false;
    animation.autoreverses = NO;
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
