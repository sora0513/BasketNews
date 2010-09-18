//
//  InfoDetailViewController.m
//  BasketNews
//
//  Created by sora on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "InfoDetailViewController.h"
#import "Info.h"

@implementation InfoDetailViewController

@synthesize info;

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = @"詳細";
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

	switch (indexPath.section) {
		case 0:
			cell.text = info.title;
			break;
		case 1:
			cell.text = info.url;
			break;
	}
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (NSString *)tableView:(UITableView *)tblView titleForHeaderInSection:(NSInteger)section {
	
	NSString *sectionName = nil;
	switch(section) {
		case 0:
			sectionName = [NSString stringWithString:@"タイトル"];
			break;
		case 1:
			sectionName = [NSString stringWithString:@"リンク"];
			break;
	}	
	return sectionName;
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[info release];
    [super dealloc];
}


@end

