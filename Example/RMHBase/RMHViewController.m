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
@interface RMHViewController ()<TTSliderViewDelegate>
@property (nonatomic,strong) NSMutableArray *arrs;
@property (nonatomic,strong) TTSliderView *sliderView;
@property (nonatomic,assign) int t;
@end

@implementation RMHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

//    [[TTNetworkManager sharedInstance] getWithUrl:@"/mall_index" parameters:nil success:^(NSDictionary *result) {
//       
//        NSLog(@"%@",result);
//        
//    } failure:^(StatusModel *status) {
//        NSLog(@"%@",status);
//    }];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
