//
//  HTAddNoteViewController.m
//  iCloudTest
//
//  Created by Jason on 2014/9/9.
//  Copyright (c) 2014年 HappyMan. All rights reserved.
//

#import "HTAddNoteViewController.h"

@interface HTAddNoteViewController ()

@end

@implementation HTAddNoteViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)saveButtonClicked:(UIButton *)button
{
    // Notify the previouse view to save the changes locally
    [[NSNotificationCenter defaultCenter] postNotificationName:@"New Note"
                                                        object:self
                                                      userInfo:@{@"Happy" : self.inputTextField.text}];

    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)cancelButtonClicked:(UIButton *)button
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
