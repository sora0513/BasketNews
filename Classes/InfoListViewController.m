//
//  InfoListViewController.m
//  BasketNews
//
//  Created by sora on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "InfoListViewController.h"
#import "InfoDetailViewController.h"
#import "Info.h"


@implementation InfoListViewController

@synthesize infos;

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	// heroku の url を設定
	[ObjectiveResourceConfig setSite:@"http://xxxxx.heroku.com/"];
	
	infos = [[Info findAllRemote] retain];
	
	self.title = @"ニュース一覧";
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [infos count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	Info *info = [infos objectAtIndex: indexPath.row];
	cell.text = info.title;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	InfoDetailViewController *detailViewController = [[InfoDetailViewController alloc] initWithNibName:@"InfoDetailViewController" bundle:nil];
	Info *info = [infos objectAtIndex: indexPath.row];
	detailViewController.info = info;
	
	[self.navigationController pushViewController:detailViewController animated:YES];
	 [detailViewController release];
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[infos release];
    [super dealloc];
}


@end

