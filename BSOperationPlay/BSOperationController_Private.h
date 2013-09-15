//
//  BSOperationController_Private.h
//  BSOperationPlay
//
//  Created by Steve Baker on 9/15/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import "BSOperationController.h"

/// Expose properties for use by unit tests
/// Declare "private" methods for use by unit tests.
/// Use extension () instead of category (Tests) and import in BSSocketController.m
/// This way, compiler checks for incomplete implementation
/// Reference
/// http://stackoverflow.com/questions/1098550/unit-testing-of-private-methods-in-xcode
/// http://lisles.net/accessing-private-methods-and-properties-in-objc-unit-tests/

@interface BSOperationController ()

/// Unit test can set it to a mock object
@property (strong, nonatomic) NSOperationQueue *operationQueue;

/// Usually set to singleton [NSNotificationCenter defaultCenter]
/// Unit test can set it to a mock notificationCenter
@property (nonatomic, strong) NSNotificationCenter *notificationCenter;

/**
 designated initializer
 @param anOperationQueue
 @param aNotificationCenter
 sets "private" property self.operationQueue
 sets "private" property self.notificationCenter
 @return a BSOperationController, generally used as a singleton
 */
- (id)initWithOperationQueue:(NSOperationQueue *)anOperationQueue
          notificationCenter:(NSNotificationCenter *)aNotificationCenter;

@end
