//
//  ViewController.h
//  MTHTableView
//
//  Created by mac on 11/27/15.
//  Copyright © 2015 Viet Anh Dang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ParentTableViewCell.h"
@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mthTableView;


@end

