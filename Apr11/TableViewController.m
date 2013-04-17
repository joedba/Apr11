//
//  TableViewController.m
//  Apr11
//
//  Created by Joe Gabela on 4/13/13.
//  Copyright (c) 2013 Joe Gabela. All rights reserved.
//


#import "TableViewController.h"


@implementation TableViewController

- (id) initWithStyle: (UITableViewStyle) style
{
	self = [super initWithStyle: style];
	if (self) {
		// Custom initialization
		carmake = [NSArray arrayWithObjects:
                   @"Acura",
                   @"Alfa Romeo",
                   @"Ariel",
                   @"Aston Martin",
                   @"Audi",
                   @"Autech",
                   @"Bentley",
                   @"BMW",
                   @"Bugatti",
                   @"Buick",
                   @"BYD Auto",
                   @"Cadillac",
                   @"Cateram",
                   @"Chery",
                   @"Chevrolet",
                   @"Chrysler",
                   @"Citroen",
                   @"Cummins",
                   @"Dacia",
                   @"Daewoo",
                   @"Diahatsu",
                   @"Dodge",
                   @"Ducati",
                   @"Eagle (Independent)",
                   @"Factory Five",
                   @"FAW",
                   @"Ferrari",
                   @"Fiat",
                   @"Fisker",
                   @"Ford",
                   @"Freight-liner",
                   @"GAZ",
                   @"GMC",
                   @"Gumpert ",
                   @"Hennessey",
                   @"Holden",
                   @"Honda",
                   @"Hyundai",
                   @"Ikarus",
                   @"Infinity",
                   @"Isuzu",
                   @"Jaguar",
                   @"Jeep",
                   @"Joss",
                   @"Kawasaki",
                   @"Kia",
                   @"Koenigsegg",
                   @"Lada",
                   @"Lamborghini",
                   @"Lancia",
                   @"Land Rover/ Range Rover", 
                   @"Lexus",
                   @"Lifan ",
                   @"Lincoln",
                   @"Lotus",
                   @"Maserati",
                   @"Mastretta",
                   @"Maybach",
                   @"Mazda",
                   @"Mercedes-Benz",
                   @"Mercury",
                   @"Mini",
                   @"Mitsubishi",
                   @"Morgan",
                   @"Nissan",
                   @"Noble",
                   @"Opel",
                   @"Pagani",
                   @"Panoz",
                   @"Peougeot",
                   @"Pininfarina",
                   @"Polski Fiat",
                   @"Porsche", 
                   @"Proton",
                   @"Radical",
                   @"RAM",
                   @"Renault",
                   @"Roewe",
                   @"Rolls Royce",
                   @"Rover",
                   @"Ruf",
                   @"Scion",
                   @"Shelby",
                   @"Skoda",
                   @"Smart",
                   @"Spada",
                   @"Spyker",
                   @"SRT",
                   @"Ssangyong",
                   @"Subaru",
                   @"Suzuki",
                   @"Tara Tiny",
                   @"TATA",
                   @"Tesla",
                   @"Toyota",
                   @"Trabant",
                   @"TRD (Toyota Racing Development)",
                   @"Triumph",
                   @"Viper",
                   @"Volkswagen",
                   @"Volvo",
                   @"Weismann",
                   @"Zenvo",
                  nil
                  ];
        
		//Three default values from class UIScrollView.
		self.tableView.bounces = YES;
		self.tableView.scrollsToTop = YES;
		self.tableView.decelerationRate = UIScrollViewDecelerationRateNormal;
	}
	return self;
}

- (void) didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
    
	// Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void) viewDidLoad
{
	[super viewDidLoad];
    
	// Uncomment the following line to preserve selection between presentations.
	// self.clearsSelectionOnViewWillAppear = NO;
    
	// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
	// self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void) viewWillAppear: (BOOL) animated
{
	[super viewWillAppear: animated];
}

- (void) viewDidAppear: (BOOL) animated
{
	[super viewDidAppear:animated];
}

- (void) viewWillDisappear: (BOOL) animated
{
	[super viewWillDisappear: animated];
}

- (void) viewDidDisappear: (BOOL) animated
{
	[super viewDidDisappear: animated];
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

#pragma mark - Table view data source

- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView
{
	// Return the number of sections.
	return 1;
}

- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection: (NSInteger) section
{
	NSAssert1(section == 0, @"section number %d must be 0.", section);
	// Return the number of rows in the section.
	return carmake.count;
}

- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
	static NSString *identifier = @"states";
    
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifier];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: identifier];
	}
    
	// Configure the cell...
	//The .textLabel and .detailTextLabel properties are UILabels.
	//The .imageView property is a UIImage.
	cell.textLabel.text = [carmake objectAtIndex: indexPath.row];
	NSString *fileName = [cell.textLabel.text stringByAppendingString: @".jpg"];
	cell.imageView.image = [UIImage imageNamed: fileName];	//nil if .jpg file doesn't exist
	return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL) tableView: (UITableView *) tableView canEditRowAtIndexPath: (NSIndexPath *) indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void) tableView: (UITableView *) tableView commitEditingStyle: (UITableViewCellEditingStyle) editingStyle forRowAtIndexPath: (NSIndexPath *) indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths: [NSArray arrayWithObject:indexPath] withRowAnimationUITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void) tableView: (UITableView *) tableView moveRowAtIndexPath: (NSIndexPath *) fromIndexPath toIndexPath:(NSIndexPath *) toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL) tableView: (UITableView *) tableView canMoveRowAtIndexPath: (NSIndexPath *) indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
	// Navigation logic may go here. Create and push another view controller.
	/*
     DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName: @"Nib name" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController: detailViewController animated: YES];
     */
}

@end