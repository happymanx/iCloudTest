//
//  HTNoteListViewController.h
//  iCloudTest
//
//  Created by Jason on 2014/9/9.
//  Copyright (c) 2014年 HappyMan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTNoteListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *notes;
@property (strong, nonatomic) IBOutlet UITableView *displayTableView;

@end
