//
//  BSOperationController.m
//  BSOperationPlay
//
//  Created by Steve Baker on 9/14/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import "BSOperationController.h"
#import "BSOperationController_Private.h"

@implementation BSOperationController

// http://stackoverflow.com/questions/5720029/create-singleton-using-gcds-dispatch-once-in-objective-c
+ (id)sharedInstance {
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc]
        initWithOperationQueue:[[NSOperationQueue alloc] init]
            notificationCenter:[NSNotificationCenter defaultCenter]];
    });
    return sharedInstance;
}

#pragma mark - Initializers
// designated initializer
- (id)initWithOperationQueue:(NSOperationQueue *)anOperationQueue
          notificationCenter:(NSNotificationCenter *)aNotificationCenter {

    // call super's designated intializer
    self = [super init];
    if (self)
    {
        self.operationQueue = anOperationQueue;
        self.notificationCenter = aNotificationCenter;
        //[self registerForUIApplicationWillEnterForegroundNotification];
    }
    return self;
}

// override superclass' designated initializer. Ref Hillegass pg 57
- (id)init
{
    // call designated initializer
    return [self initWithOperationQueue:nil
                     notificationCenter:nil];
}

@end
