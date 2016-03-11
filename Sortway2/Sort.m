//
//  Sort.m
//  Sortway
//
//  Created by 阳永辉 on 16/1/27.
//  Copyright © 2016年 HuiDe. All rights reserved.
//

#import "Sort.h"
@interface Sort ()
- (void)quickSortWithArray:(NSArray *)aData left:(NSInteger)left right:(NSInteger)right;
@end

@implementation Sort

- (id)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

//选择排序
- (void)selectSortWithArray:(NSArray *)aData {
    NSMutableArray *data = [[NSMutableArray alloc] initWithArray:aData];
    for (int i = 0; i<[data count] ; i++) {
        int m = i;
        for (int j = i + 1;j<[data count] ; j++) {
            if ([data objectAtIndex:j] < [data objectAtIndex:m]) {
                m = j;
            }
        }
        
        if (m != i) {
            [self swapWithData:data index1:m index2:i];
        }
        
        NSLog(@"选择排序后的结果：%@",[data description]);
    }
}

//插入排序
- (void)insertSortWithArray:(NSArray *)aData {
    NSMutableArray *data = [[NSMutableArray alloc] initWithArray:aData];
    for (int i = 1; i < [data count]; i++) {
        id tmp = [data objectAtIndex:i];
        int j = i - 1;
        while (j != -1 && [data objectAtIndex:j] > tmp) {
            [data replaceObjectAtIndex:j+1 withObject:[data objectAtIndex:j]];
            j--;
        }
        [data replaceObjectAtIndex:j+1 withObject:tmp];
    }
    NSLog(@"插入排序的结果：%@",[data description]);
}

//快速排序
- (void)quickSortWithArray:(NSArray *)aData {
    NSMutableArray*data = [[NSMutableArray alloc] initWithArray:aData];
    [self quickSortWithArray:data left:0 right:[aData count] - 1];
    NSLog(@"快速排序后的结果：%@",[data description]);
}

//快速排序的具体算法
- (void)quickSortWithArray:(NSMutableArray *)aData left:(NSInteger)left right:(NSInteger)right {
    if (right >left) {
        NSInteger i = left;
        NSInteger j = right + 1;
        while (true) {
            while (i + 1 < [aData count] && [aData objectAtIndex:++i] < [aData objectAtIndex:left]) ;
            while (j-1 > -1 && [aData objectAtIndex:--j] > [aData objectAtIndex:left]);
            
            if (i >= j) {
                break;
            }
            
            [self swapWithData:aData index1:i index2:j];

        }
        [self swapWithData:aData index1:left index2:j];
        [self quickSortWithArray:aData left:left right:j-1];
        [self quickSortWithArray:aData left:j+1 right:right];
    }
}

//把index1和index2处的数据交换一下
- (void)swapWithData:(NSMutableArray *)aData index1:(NSInteger)index1 index2:(NSInteger)index2 {
    NSNumber *tmp = [aData objectAtIndex:index1];
    [aData replaceObjectAtIndex:index1 withObject:[aData objectAtIndex:index2]];
    [aData replaceObjectAtIndex:index2 withObject:tmp];
}
@end
