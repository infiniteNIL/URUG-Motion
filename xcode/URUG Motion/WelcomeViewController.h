//
//  WelcomeViewController.h
//  URUG Motion
//
//  Created by Rod Schmidt on 10/10/12.
//  Copyright (c) 2012 Rod Schmidt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface WelcomeViewController : MainViewController

@property (nonatomic, strong) IBOutlet UILabel *label;

- (IBAction)unwindFromConfirmationForm:(UIStoryboardSegue *)segue;

@end
