//
//  UINavigationController+Block.m
//  HongBao
//
//  Created by 任梦晗 on 16/1/21.
//  Copyright © 2016年 任梦晗. All rights reserved.
//

#import "UINavigationController+Block.h"

static VoidBlock _completionBlock;
static UIViewController *_viewController;

@implementation UINavigationController (Block)

- (void)pushViewController:(UIViewController *)viewController
                  animated:(BOOL)animated
              onCompletion:(VoidBlock)completion
{
    [self setCompletionBlock:completion viewController:viewController delegate:weakObject(self)];
    [self pushViewController:_viewController animated:animated];

}

- (void)popToViewController:(UIViewController *)viewController
                   animated:(BOOL)animated
               onCompletion:(VoidBlock)completion
{
    [self setCompletionBlock:completion viewController:viewController delegate:weakObject(self)];
    [self popToViewController:_viewController animated:animated];

}

- (void)popViewControllerAnimated:(BOOL)animated
                     onCompletion:(VoidBlock)completion
{
    NSUInteger index = [self.viewControllers indexOfObject:self.visibleViewController];
    
    if (index > 0) {
        
        index--;
        UIViewController *viewController = [self.viewControllers objectAtIndex:index];
        
        [self setCompletionBlock:completion viewController:viewController delegate:weakObject(self)];
        [self popToViewController:_viewController animated:animated];
    }

}

- (void)popToRootViewControllerAnimated:(BOOL)animated
                           onCompletion:(VoidBlock)completion
{
    NSUInteger index = [self.viewControllers indexOfObject:self.visibleViewController];
    
    if (index > 0) {
        
        UIViewController *viewController = [self.viewControllers objectAtIndex:0];
        
        [self setCompletionBlock:completion viewController:viewController delegate:weakObject(self)];
        [self popToRootViewControllerAnimated:animated];
    }
}

- (void)setCompletionBlock:(VoidBlock)completion viewController:(UIViewController *)viewController delegate:(id)delegate
{
    if (!completion) {
        return;
    }
    
    _completionBlock  = [completion copy];
    _viewController = viewController;
    
    self.delegate = delegate;
}


#pragma mark - UINavigationControllerDelegate method
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([viewController isEqual:_viewController] && _completionBlock) {
        _completionBlock();
        _viewController = nil;
    }
}

@end
