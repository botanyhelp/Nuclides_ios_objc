//
//  MasterViewController.m
//  Nuclides
//
//  Created by Tom Maher on 2/5/14.
//  Copyright (c) 2014 Tom Maher. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"
#import "NuclideDataController.h"
#import "Nuclides.h"

@interface MasterViewController ()
    @property (nonatomic, strong) NuclideDataController *nuclideDataController;
@end

@implementation MasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.nuclideDataController = [[NuclideDataController alloc] init];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return _objects.count;
    return [self.nuclideDataController nuclideCount];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NuclideCell" forIndexPath:indexPath];
    //NSDate *object = _objects[indexPath.row];
    Nuclides *nuclide = [self.nuclideDataController nuclideAtIndex:indexPath.row];
    cell.textLabel.text = nuclide.element;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showNuclideDetails"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //NSDate *object = _objects[indexPath.row];
        Nuclides *nuclide =[self.nuclideDataController nuclideAtIndex:indexPath.row];
        [[segue destinationViewController] setDetailItem:nuclide];
    }
}

@end
