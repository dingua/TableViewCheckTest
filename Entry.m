//
//  Entry.m
//  TableViewCheckTest
//
//  Created by Mejdi Lassidi on 11/19/15.
//  Copyright © 2015 Dingua. All rights reserved.
//

#import "Entry.h"

@implementation Entry
- (instancetype) initWithText:(NSString*)text {
    self = [super init];
    if (self!=nil) {
        self.text = text;
        //first checked is set to NO
        self.checked = NO;
    }
    return self;
}
@end
