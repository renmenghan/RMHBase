//
//  UIImage+RMH.h
//  RMHBase_Example
//
//  Created by 任梦晗 on 2017/12/10.
//  Copyright © 2017年 renmenghan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (RMH)
// load images form bundle
+ (UIImage *)imageNamed:(NSString *)name module:(NSString *)moduleName;

@end
