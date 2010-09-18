//
//  Info.h
//  BasketNews
//
//  Created by sora on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectiveResource.h"

@interface Info : NSObject {
    NSString *infoId;
    NSString *title;
    NSString *url;
}

@property (nonatomic , retain) NSString *infoId;
@property (nonatomic , retain) NSString *title;
@property (nonatomic , retain) NSString *url;

@end
