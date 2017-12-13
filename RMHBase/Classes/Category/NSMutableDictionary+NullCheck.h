//
//  NSMutableDictionary+NullCheck.h
//  RMHBase_Example
//
//  Created by 任梦晗 on 2017/12/13.
//  Copyright © 2017年 renmenghan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (NullCheck)

- (void)setSafeObject:(id)anObject forKey:(id)aKey;

@end
