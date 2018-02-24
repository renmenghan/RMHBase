//
//  TTAppThemeHelper.m
//  SPL
//
//  Created by 任梦晗 on 2018/2/24.
//  Copyright © 2018年 任梦晗. All rights reserved.
//

#import "TTAppThemeHelper.h"
#import "ColorMarco.h"

@implementation TTAppThemeHelper

+ (instancetype)defaultTheme
{
    static TTAppThemeHelper *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[TTAppThemeHelper alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    
    if ( self ) {
        _mainThemeColor = [UIColor whiteColor];
        _mainThemeContrastColor = [UIColor blackColor];
        
        _navigationBarBackgroundColor = [UIColor whiteColor];
        _navigationBarTintColor = [UIColor blackColor];
        _navigationBarBackColor = [UIColor blackColor];
        _navigationBarButtonColor = [UIColor blackColor];
        _navigationBarBottomColor = [UIColor lightGrayColor];
        _navigationBarTitleColor = [UIColor blackColor];
        
        _shortButtonBackgroundColor = Color_Red6;
        _longButtonBackgroundColor = Color_Red6;
        
        _searchHeadBackgroundColor = Color_Red6;
        _bannerBackgroundColor = Color_Red6;
        _tabbarTopColor = Color_Gray216;
        _tabbarBackgroundColor = Color_Gray245;
        _tabbarTopColor = Color_Gray245;
    }
    
    return self;
}

@end
