//
//  NibViewController.h
//  URUG Motion
//
//  Created by Rod Schmidt on 10/12/12.
//  Copyright (c) 2012 Rod Schmidt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface NibViewController : MainViewController

@property (nonatomic, strong) IBOutlet UILabel *label;

- (IBAction)showNib:(id)sender;

@end
