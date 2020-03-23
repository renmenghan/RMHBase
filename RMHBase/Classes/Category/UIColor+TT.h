//
//  UIColor+TT.h
//  Pods
//
//  Created by 任梦晗 on 2017/3/23.
//

/**
*  UIColor 扩展
*/
#import <UIKit/UIKit.h>


@interface UIColor (TT)
/**
 *  根据十六进制字符串生成 UIColor
 *
 *  @param hexString  十六进制颜色值
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 *  根据十六进制字符串生成 UIColor
 *
 *  @param hexString  十六进制颜色值
 *  @param alpha  透明度
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end

