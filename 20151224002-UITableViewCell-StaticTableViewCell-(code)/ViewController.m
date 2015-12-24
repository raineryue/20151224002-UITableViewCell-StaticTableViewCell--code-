//
//  ViewController.m
//  20151224002-UITableViewCell-StaticTableViewCell-(code)
//
//  Created by Rainer on 15/12/24.
//  Copyright © 2015年 Rainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 80;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (0 == section)
        return 1;
    else if (1 == section)
        return 2;
    else
        return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (0 == section)
        return @"第一组";
    else if (1 == section)
        return @"第二组";
    else
        return @"第三组";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *tableViewCellIdentifier = @"tableViewCellIdentifier";
    
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifier];
    
    if (nil == tableViewCell) {
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCellIdentifier];
    }
    
    if (0 == indexPath.section) {
        tableViewCell.imageView.image = [UIImage imageNamed:@"found_icons_folder"];
        tableViewCell.textLabel.text = @"文件传输";
    } else if (1 == indexPath.section) {
        if (0 == indexPath.row) {
            tableViewCell.imageView.image = [UIImage imageNamed:@"found_icons_gamecenter"];
            tableViewCell.textLabel.text = @"游戏中心";
        } else {
            tableViewCell.imageView.image = [UIImage imageNamed:@"found_icons_location"];
            tableViewCell.textLabel.text = @"地图定位";
        }
    } else if (2 == indexPath.section) {
        if (0 == indexPath.row) {
            tableViewCell.imageView.image = [UIImage imageNamed:@"found_icons_qzone"];
            tableViewCell.textLabel.text = @"QQ空间";
        } else if (1 == indexPath.row) {
            tableViewCell.imageView.image = [UIImage imageNamed:@"found_icons_readcenter"];
            tableViewCell.textLabel.text = @"阅读中心";
        } else {
            tableViewCell.imageView.image = [UIImage imageNamed:@"found_icons_saosao"];
            tableViewCell.textLabel.text = @"扫一扫";
        }
    }
    
    return tableViewCell;
}

@end
