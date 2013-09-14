//
//  BSViewController_Private.h
//  BSOperationPlay
//
//  Created by Steve Baker on 9/14/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//
/// Expose properties for use by unit tests
/// Declare "private" methods for use by unit tests.
/// Use extension () instead of category (Tests) and import in BSViewController.m
/// This way, compiler checks for incomplete implementation
/// Reference
/// http://stackoverflow.com/questions/1098550/unit-testing-of-private-methods-in-xcode
/// http://lisles.net/accessing-private-methods-and-properties-in-objc-unit-tests/

#import "BSViewController.h"

@interface BSViewController ()
@property (weak, nonatomic) IBOutlet UIButton *startOperationButton;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)startOperation:(id)sender;

@end
