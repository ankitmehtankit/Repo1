//
//  LawyerTableViewCell.h
//  Lawyer
//
//  Created by Ankit Mehta on 06/10/17.
//  Copyright © 2017 Ankit Mehta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LawyerTableViewCell : UITableViewCell
{
    IBOutlet UIImageView *lawyer_Image;
    IBOutlet UILabel *lawyer_Name, *lawyer_Speciality, *lawyer_rating, *laywer_Cost;
    IBOutlet UIImageView *lawyer_Checkmark;
    IBOutlet UIView *shadowView, *cornerView;
}
@property IBOutlet UIImageView *lawyer_Image;
@property IBOutlet UILabel *lawyer_Name, *lawyer_Speciality, *lawyer_rating, *laywer_Cost;
@property IBOutlet UIImageView *lawyer_Checkmark;
@property IBOutlet UIView *shadowView, *cornerView;

-(void) setUpCellWithDict: (NSDictionary *)dict;
@end
