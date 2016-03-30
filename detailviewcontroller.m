//
//  DetailViewController.m
//  Nuclides
//
//  Created by Tom Maher on 2/5/14.
//  Copyright (c) 2014 Tom Maher. All rights reserved.
//

#import "DetailViewController.h"
#import "Nuclides.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    self.nuclideElementLabel.text = self.detailItem.element;
    self.nuclideTextView.text = self.detailItem.nuclide;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
