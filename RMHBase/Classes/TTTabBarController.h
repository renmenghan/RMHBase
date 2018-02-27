//
//  TTTabBarController.h
//  SPL
//
//  Created by 任梦晗 on 2018/2/23.
//  Copyright © 2018年 任梦晗. All rights reserved.
//

#import "BaseViewController.h"
#import "TTTabBar.h"

@protocol TTTabbarControllerDelegate;
/**
 *  自定义的 TabBarController
 */
@interface TTTabBarController : BaseViewController<TTTabbarDelegate>

/**
 *  tabbar
 */
@property(nonatomic, strong, readonly) TTTabBar *tabBar;

/**
 *  tabbarcontroller 中的 viewcontroller
 */
@property(nonatomic, strong, readonly) NSArray *viewControllers;

/**
 *  tabbarcontroller 中的 默认viewcontroller
 */
@property (nonatomic, strong, readonly) NSArray *defaultViewControllers;


/**
 *  当前选中的 viewcontroller
 */
@property(nonatomic, strong, readonly) BaseViewController *selectedViewController;

/**
 *  当前选中的 index
 */
@property(nonatomic, assign, readonly) NSInteger selectIndex;

/**
 *  delegate
 */
@property(nonatomic, weak) id<TTTabbarControllerDelegate> tabBarControllerDelegate;

/**
 *  初始化 tabbarcontroller
 *
 *  @param viewControllers tabbarcontroller 中的 viewcontroller
 *
 *  @return
 */
- (id)initWithViewControllers:(NSArray *)viewControllers;

/**
 *  选中某个 tab
 *
 *  @param index 索引
 */
- (void)selectAtIndex:(NSInteger)index;

/**
 *  重载TabbarController
 */
- (void)reloadData;
@end

/**
 *  TTTabbarControllerDelegate
 */
@protocol TTTabbarControllerDelegate <NSObject>
/**
 *  是否能选中制定的 viewcontroller
 *
 *  @param tabBarController tabbarcontroller
 *  @param viewController   将要选中的 viewcontroller
 *  @param index            将要选中的 viewcontroller 在 tabbar 中的索引
 *
 *  @return
 */
- (BOOL)tabBarController:(TTTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController atIndex:(NSInteger)index;

/**
 *  选中 tabbarcontroller 中某个 viewcontroller 时调用
 *
 *  @param tabBarController tabbarcontroller
 *  @param viewController   选中的 viewcontroller
 *  @param index            选中的 viewcontroller 在 tabbar 中的索引
 */
- (void)tabBarController:(TTTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController atIndex:(NSInteger)index;


@end
@protocol TTTabBarControllerProtocal <NSObject>

@optional
/**
 *  当 viewcontroller 被选中时调用，必须是切换的情况下
 */
- (void)didSelectedInTabBarController;
/**
 *  点击时，当前 viewcontroller 已经是选中的情况下调用
 */
- (void)didSelectedInTabBarControllerWhenAppeared;

@end
