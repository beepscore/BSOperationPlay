//
//  BSViewControllerTests.m
//  BSOperationPlay
//
//  Created by Steve Baker on 9/14/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BSViewController.h"
#import "BSViewController_Private.h"

@interface BSViewControllerTests : XCTestCase
@property (strong, nonatomic) BSViewController *viewController;
@end

@implementation BSViewControllerTests

- (void)setUp
{
    [super setUp];

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    self.viewController = [storyboard instantiateViewControllerWithIdentifier:@"bsViewController"];

    // Call load view to instantiate view and subviews.
    // http://iosunittesting.com/using-storyboards/
    [self.viewController performSelectorOnMainThread:@selector(loadView)
                                          withObject:nil
                                       waitUntilDone:YES];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testViewDidLoad
{
    [self.viewController viewDidLoad];
    XCTAssertEqualObjects(@"", self.viewController.resultLabel.text, @"");
}

- (void)testStartOperation
{
    [self.viewController startOperation:self];
    XCTAssertEqualObjects(@"started", self.viewController.resultLabel.text, @"");
}

@end
