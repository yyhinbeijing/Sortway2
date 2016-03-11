//
//  Sort.h
//  Sortway
//
//  Created by 阳永辉 on 16/1/27.
//  Copyright © 2016年 HuiDe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sort : NSObject
//选择排序
- (void)selectSortWithArray:(NSArray *)aData;

//插入排序
- (void)insertSortWithArray:(NSArray *)aData;

//快速排序
- (void)quickSortWithArray:(NSArray *)aData;

- (void)swapWithData:(NSMutableArray *)aData index1:(NSInteger)index1 index2:(NSInteger)index2;


@end
