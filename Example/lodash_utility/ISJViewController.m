//
//  ISJViewController.m
//  lodash_utility
//
//  Created by Isra San Jose Gonzalez on 12/14/2015.
//  Copyright (c) 2015 Isra San Jose Gonzalez. All rights reserved.
//

#import "ISJViewController.h"

#import <lodash_utility/lodash.h>

@interface ISJViewController ()

@end

@implementation ISJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSInteger __block count = 0;
    NSInteger times = 10;
    
    _.times(times,^(NSInteger n){
        count++;
    });
    
    NSLog(@"%ld",(long)count);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
