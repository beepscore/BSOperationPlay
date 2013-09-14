//
//  BSViewController.m
//  BSOperationPlay
//
//  Created by Steve Baker on 9/14/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import "BSViewController.h"
#import "BSViewController_Private.h"


@implementation BSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.resultLabel.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startOperation:(id)sender {
    self.resultLabel.text = @"started";
}

@end
