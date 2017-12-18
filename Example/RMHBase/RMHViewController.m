//
//  RMHViewController.m
//  RMHBase
//
//  Created by renmenghan on 12/08/2017.
//  Copyright (c) 2017 renmenghan. All rights reserved.
//

#import "RMHViewController.h"
#import "NSArray+NullCheck.h"
#import "TTNetworkManager.h"
#import "TTSliderView.h"
#import "UIView+TT.h"
#import "ADModel.h"
#import <UIImageView+WebCache.h>
#import "TTViewPagerController.h"
@interface RMHViewController ()<TTSliderViewDelegate>
@property (nonatomic,strong) NSMutableArray *arrs;
@property (nonatomic,strong) TTSliderView *sliderView;
@property (nonatomic,strong) TTViewPagerController *pagerVC;
@property (nonatomic,assign) int t;
@end

@implementation RMHViewController

- (TTViewPagerController *)pagerVC
{
    if (!_pagerVC) {
        _pagerVC = [[TTViewPagerController alloc] init];
        _pagerVC.isNav = YES;
        [self addChildViewController:_pagerVC];
    }
    return _pagerVC;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //[self testNetwork];
    //[self testSliderView];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.pagerVC.view.frame = self.view.bounds;
    [self.view addSubview:self.pagerVC.view];
    
    NSArray *items = @[@"专辑", @"声音", @"下载中"];
    UIViewController *vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor redColor];
    
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor yellowColor];
    
    [self.pagerVC setUpWithItems:items childVCs:@[vc1,vc2,vc3]];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSArray *items = @[@"专辑专辑", @"声xxx音", @"下载中xxxx", @"下载中xxxx", @"下载中xxxx"];
        
        // 添加几个自控制器
        // 在contentView, 展示子控制器的视图内容
        
        UIViewController *vc1 = [UIViewController new];
        vc1.view.backgroundColor = [UIColor redColor];
        
        UIViewController *vc2 = [UIViewController new];
        vc2.view.backgroundColor = [UIColor greenColor];
        
        UIViewController *vc3 = [UIViewController new];
        vc3.view.backgroundColor = [UIColor yellowColor];
        
        UIViewController *vc4 = [UIViewController new];
        vc4.view.backgroundColor = [UIColor greenColor];
        
        UIViewController *vc5 = [UIViewController new];
        vc5.view.backgroundColor = [UIColor yellowColor];
        
        
        [self.pagerVC setUpWithItems:items childVCs:@[vc1, vc2, vc3, vc4, vc5]];
        
        [self.pagerVC.viewPagerBar updateWithConfig:^(TTViewPagerConfig *config) {
            
            config.p_barBackColor([UIColor greenColor]).p_itemNormalC([UIColor redColor]).p_indicatorC([UIColor blackColor]);
            
        }];
    });
    
    
}
- (void)testNetwork
{
        [[TTNetworkManager sharedInstance] getWithUrl:@"/mall_index" parameters:nil success:^(NSDictionary *result) {
    
            NSLog(@"%@",result);
    
        } failure:^(StatusModel *status) {
            NSLog(@"%@",status);
        }];
}

- (void)testSliderView
{
    NSArray *arr = @[@{@"image":@"https://img.taomengzhe.cn/20171023/19m_30a5ba219b63189b415d8d8be3fcbcaa_750x380.jpg"},@{@"image":@"https://img.taomengzhe.cn/20171101/19m_063b39707a169e5936efb1c30d6a1537_750x380.jpg"},@{@"image":@"https://img.taomengzhe.cn/20171023/19m_08d787d6a12560256c091cbddcf90c3f_750x380.jpg"},@{@"image":@"https://img.taomengzhe.cn/20171023/19m_e8195fc078a166eac95879023edf4e85_750x380.jpg"}];
    _arrs = [NSMutableArray array];
    for (int i = 0; i < arr.count; i++) {
        ADModel *model = [[ADModel alloc] init];
        model.adImgURL = [NSURL URLWithString:arr[i][@"image"]];
        [_arrs addObject:model];
    }
    
    
    _sliderView = [[TTSliderView alloc] initWithFrame:CGRectMake(0, 100, self.view.width, self.view.width/2) withDelete:self];;
    [self.view addSubview:_sliderView];
}

#pragma mark - SliderViewdelegate
- (NSInteger)numberOfItemsInSliderView:(TTSliderView *)sliderView
{
    return _arrs.count;
}

- (void)sliderImageView:(UIImageView *)image viewForItemAtIndex:(NSInteger)index
{
    ADModel *model = _arrs[index];
    [image sd_setImageWithURL:model.adImgURL];
}

- (void)sliderView:(TTSliderView *)sliderView didSelectViewAtIndex:(NSInteger)index
{
    NSLog(@"%ld",index);
}



@end
