//
//  Entry.h
//  TableViewCheckTest
//
//  Created by Mejdi Lassidi on 11/19/15.
//  Copyright © 2015 Dingua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject
@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) BOOL checked;

- (instancetype) initWithText:(NSString*)text;
@end
