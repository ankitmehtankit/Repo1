//
//  LawyerTableViewCell.m
//  Lawyer
//
//  Created by Ankit Mehta on 06/10/17.
//  Copyright © 2017 Ankit Mehta. All rights reserved.
//

#import "LawyerTableViewCell.h"

@implementation LawyerTableViewCell
@synthesize shadowView, cornerView, lawyer_Name,lawyer_Image,laywer_Cost, lawyer_rating, lawyer_Checkmark,lawyer_Speciality;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Default Select background
    UIView *v = [[UIView alloc] init];
    v.backgroundColor = [UIColor clearColor];
    self.selectedBackgroundView = v;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    [self.cornerView setBackgroundColor:[UIColor whiteColor]];
    // Configure the view for the selected state
}

-(void) setUpCellWithDict: (NSDictionary *)dict {
    shadowView.layer.shadowColor = [UIColor blackColor].CGColor;
    shadowView.layer.shadowOffset = CGSizeMake(0.5, 4.0); //Here your control your spread
    shadowView.layer.shadowOpacity = 0.1;
    shadowView.layer.shadowRadius = 1.0; //Here your control your blur
    [shadowView setClipsToBounds:false];

    cornerView.layer.cornerRadius = 4.0;
    cornerView.layer.borderColor = [UIColor colorWithWhite:0.9 alpha:0.5].CGColor;
    cornerView.layer.borderWidth = 1.0;
    [cornerView setClipsToBounds:true];
    
    lawyer_Name.text = [dict valueForKey:@"Lawyer_Name"];
    lawyer_Image.image = [UIImage imageNamed:[dict valueForKey:@"Lawyer_Picture"]];
    
    UIFont *text1Font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:18];
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:[dict valueForKey:@"Lawyer_Price"] attributes:@{ NSFontAttributeName : text1Font }];
    UIFont *text2Font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
    NSMutableAttributedString *str1 = [[NSMutableAttributedString alloc] initWithString:@"/h" attributes:@{ NSFontAttributeName : text2Font }];
    [str appendAttributedString:str1];
    
    laywer_Cost.attributedText = str;
    lawyer_rating.text = [dict valueForKey:@"Lawyer_Rating"];
    
    if ([[dict valueForKey:@"Lawyer_Checked"] boolValue]) {
        [lawyer_Checkmark setHidden:false];
    } else {
        [lawyer_Checkmark setHidden:true];
    }
    lawyer_Speciality.text = [dict valueForKey: @"Lawyer_Speciality"];
}

@end
