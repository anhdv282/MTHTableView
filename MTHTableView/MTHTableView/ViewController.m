//
//  ViewController.m
//  MTHTableView
//
//  Created by mac on 11/27/15.
//  Copyright © 2015 Viet Anh Dang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *dataArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataArray = [[NSArray alloc] initWithObjects:@"Food",@"Drink",@"Cake", nil];
    // Do any additional setup after loading the view, typically from a nib.
    self.mthTableView.delegate = self;
    self.mthTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = NSStringFromClass([ParentTableViewCell class]);
    ParentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil] objectAtIndex:0];
    }
    cell.lblTitle.text = [dataArray objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataArray.count;
}

@end
