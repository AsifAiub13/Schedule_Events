//
//  AboutTableViewController.m
//  Schedule_Events
//
//  Created by Asif Seraje on 8/4/18.
//

#import "AboutTableViewController.h"

@interface AboutTableViewController ()<UITableViewDelegate,UITableViewDataSource>

@end
@implementation AboutTableViewController
@synthesize aboutElementsArray,aboutRightElementsArray;
- (void)viewDidLoad {
    [super viewDidLoad];
    aboutElementsArray = @[@"App Name:",@"Version:",@"Build Number:",@"In app purchase"];
    aboutRightElementsArray = @[@"ScheduleiT",@"1.0",@"20180804",@""];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.title = @"About Us";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView registerClass:[UITableViewCell self] forCellReuseIdentifier:@"aboutCell"];
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"aboutCell"];
    cell.textLabel.text = aboutElementsArray[indexPath.row];
    cell.detailTextLabel.text = aboutRightElementsArray[indexPath.row];
    if(indexPath.row == 3){
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else{
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 3) {
        NSLog(@"In app purchase pressed!");
    }
    [self.tableView deselectRowAtIndexPath:indexPath animated:true];
}

@end
