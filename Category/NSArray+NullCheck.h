//
//  NullCheck.h
//  BaseUtilityExample
//
//  Created by 任梦晗 on 17/3/14.
//  Copyright © 2017年 任梦晗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (NullCheck)

- (id)safeObjectAtIndex:(NSInteger)index;

@end
