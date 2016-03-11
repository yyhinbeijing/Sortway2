//
//  ViewController.m
//  Sortway2
//
//  Created by 阳永辉 on 16/3/11.
//  Copyright © 2016年 HuiDe. All rights reserved.
//

#import "ViewController.h"
#import "Sort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *arr = [[NSArray alloc] initWithObjects:@(1),@(2),@(5),@(3),@(100),@(0) ,nil];
    Sort *sort = [[Sort alloc] init];
    [sort insertSortWithArray:arr];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
