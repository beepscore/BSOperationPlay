//
//  BSOperationControllerTests.m
//  BSOperationPlay
//
//  Created by Steve Baker on 9/14/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BSOperationController.h"
#import "BSOperationController_Private.h"

@interface BSOperationControllerTests : XCTestCase
@property (strong, nonatomic) BSOperationController *operationController;
@end

@implementation BSOperationControllerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

#pragma mark - test sharedInstance
- (void)testSharedInstance {
    self.operationController = [BSOperationController sharedInstance];
    // call sharedInstance again to check it returns the same instance
    // XCTAssertEqual is the identical object
    // XCTAssertEqualObjects tests objectA isEqual:objectB
    XCTAssertEqual([BSOperationController sharedInstance],
                   self.operationController,
                   @"expected sharedInstance returns same instance");
}

- (void)testSharedInstanceNotificationCenter {
    self.operationController = [BSOperationController sharedInstance];
    // Could reduce scope of this test by testing sharedInstance calls
    // designated initializer with defaultCenter.
    XCTAssertEqual([NSNotificationCenter defaultCenter],
                   self.operationController.notificationCenter,
                   @"expected sharedInstance sets notificationCenter to defaultCenter");
}

- (void)testSharedInstanceOperationQueue {
    self.operationController = [BSOperationController sharedInstance];
    // Could reduce scope of this test by testing sharedInstance calls
    // designated initializer.
    XCTAssertNotNil(self.operationController.operationQueue,
                   @"expected sharedInstance sets operationQueue");
}

# pragma mark - test designated initializer
- (void)testDesignatedInitializerWithParamsNil {
    self.operationController = [[BSOperationController alloc]
        initWithOperationQueue:nil
                 notificationCenter:nil];
    XCTAssertNil(self.operationController.operationQueue,
                @"expected operationQueue nil");
    XCTAssertNil(self.operationController.notificationCenter,
                @"expected notificationCenter nil");
}

/*
- (void)testDesignatedInitializerSetsNotificationCenter {
    // Use nice mock to ignore un-expect-ed calls.
    id mockNotificationCenter = [OCMockObject niceMockForClass:[NSNotificationCenter class]];
    self.operationController = [[BSOperationController alloc]
        initWithOperationQueue:nil
            notificationCenter:mockNotificationCenter];
    XCTAssertEqual(mockNotificationCenter,
                   self.operationController.notificationCenter,
                   @"expected notificationCenter set");
}
*/

@end
