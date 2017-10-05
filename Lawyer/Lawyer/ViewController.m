//
//  ViewController.m
//  Lawyer
//
//  Created by Ankit Mehta on 02/10/17.
//  Copyright © 2017 Ankit Mehta. All rights reserved.
//

#import "ViewController.h"
#import "PopupUtilityClass.h"
#import "LawyerTableViewCell.h"
#import "BlankTableViewCell.h"

@interface ViewController ()
{
    NSMutableArray *tableArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    maxHeight = objHeightOfImage.constant;
    tableArray = [NSMutableArray new];
    [PopupUtilityClass addTempDataToArray:tableArray];
    tableView.separatorColor = [UIColor clearColor];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;    //count of section
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tableArray.count+1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        BlankTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BlankCell"];
        if (cell == nil) {
            cell = [[BlankTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                              reuseIdentifier:@"BlankCell"];
        }
        return cell;
    }
    
    LawyerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LawyerTableViewCell"];
    if (cell == nil) {
        cell = [[LawyerTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                  reuseIdentifier:@"LawyerTableViewCell"];
    }
    NSDictionary *dict = [tableArray objectAtIndex:indexPath.row-1];
    [cell setUpCellWithDict:dict];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:false];
}
-  (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return 150.0;
    }
    return 80.0;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"Scrollview did scroll= %f",scrollView.contentOffset.y);
    if (maxHeight-scrollView.contentOffset.y > 0) {
        objHeightOfImage.constant = maxHeight-scrollView.contentOffset.y;
    }
    else {
        objHeightOfImage.constant = 0;
    }
}

@end
