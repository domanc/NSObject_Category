//
//  ViewController.m
//  NSObject_Category
//
//  Created by Doman on 17/3/22.
//  Copyright © 2017年 doman. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Name.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSObject *objc = [[NSObject alloc] init];
    objc.name = @"doman";
    
    NSLog(@"%@",objc.name);
    
}


@end
