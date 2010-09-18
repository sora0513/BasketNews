//
//  InfoDetailViewController.h
//  BasketNews
//
//  Created by sora on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Info;

@interface InfoDetailViewController : UITableViewController {
	Info *info;
}

@property (nonatomic , retain) Info *info;

@end
