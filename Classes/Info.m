//
//  Info.m
//  BasketNews
//
//  Created by sora on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Info.h"


@implementation Info

@synthesize infoId, title, url;

- (void)dealloc {
	[infoId release];
	[title release];
	[url release];
	
	[super dealloc];
}

@end
