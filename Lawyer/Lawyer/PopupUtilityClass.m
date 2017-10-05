//
//  PopupUtilityClass.m
//  IntelliSchool
//
//  Created by macmini1 on 22/12/16.
//  Copyright © 2016 intellinet. All rights reserved.
//

#import "PopupUtilityClass.h"

@implementation PopupUtilityClass

+(void) addTempDataToArray:(NSMutableArray *)tableArray {
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"1" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Ankit Mehta" forKey:@"Lawyer_Name"];
        [dict setValue:@"Criminal" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"5.0" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$55.50" forKey:@"Lawyer_Price"];
        [dict setValue:@"1" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"4" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Diksha Bakshi" forKey:@"Lawyer_Name"];
        [dict setValue:@"Crime" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"4.0" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$25.50" forKey:@"Lawyer_Price"];
        [dict setValue:@"1" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"1" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Jony Charaya" forKey:@"Lawyer_Name"];
        [dict setValue:@"Murder" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"5.0" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$45.00" forKey:@"Lawyer_Price"];
        [dict setValue:@"0" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"4" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Gaurav Bajaj" forKey:@"Lawyer_Name"];
        [dict setValue:@"Robbery" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"3.0" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$75.50" forKey:@"Lawyer_Price"];
        [dict setValue:@"0" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"1" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Daksh Mehta" forKey:@"Lawyer_Name"];
        [dict setValue:@"Banking" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"2.0" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$35.50" forKey:@"Lawyer_Price"];
        [dict setValue:@"1" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"4" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Raju Rawat" forKey:@"Lawyer_Name"];
        [dict setValue:@"Pahadi" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"2.5" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$15.50" forKey:@"Lawyer_Price"];
        [dict setValue:@"0" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"4" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Ajay Rawat" forKey:@"Lawyer_Name"];
        [dict setValue:@"Business" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"5.0" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$85.50" forKey:@"Lawyer_Price"];
        [dict setValue:@"1" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
    {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        [dict setValue:@"1" forKey:@"Lawyer_Picture"];
        [dict setValue:@"Akshit Dhingra" forKey:@"Lawyer_Name"];
        [dict setValue:@"Criminal" forKey:@"Lawyer_Speciality"];
        [dict setValue:@"5.0" forKey:@"Lawyer_Rating"];
        [dict setValue:@"$95.50" forKey:@"Lawyer_Price"];
        [dict setValue:@"1" forKey:@"Lawyer_Checked"];
        [tableArray addObject:dict];
    }
}
@end
