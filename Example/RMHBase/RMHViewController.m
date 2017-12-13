//
//  RMHViewController.m
//  RMHBase
//
//  Created by renmenghan on 12/08/2017.
//  Copyright (c) 2017 renmenghan. All rights reserved.
//

#import "RMHViewController.h"
#import "NSArray+NullCheck.h"
#import "TTNetworkManager.h"
@interface RMHViewController ()

@end

@implementation RMHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
    [[TTNetworkManager sharedInstance] getWithUrl:@"/mall_index" parameters:nil success:^(NSDictionary *result) {
       
        NSLog(@"%@",result);
        
    } failure:^(StatusModel *status) {
        NSLog(@"%@",status);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
