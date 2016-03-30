//
//  DetailViewController.h
//  Nuclides
//
//  Created by Tom Maher on 2/5/14.
//  Copyright (c) 2014 Tom Maher. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Nuclides;

@interface DetailViewController : UITableViewController

@property (strong, nonatomic) Nuclides *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *nuclideElementLabel;
@property (weak, nonatomic) IBOutlet UITextView *nuclideTextView;

@end
