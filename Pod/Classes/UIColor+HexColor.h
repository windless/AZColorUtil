//
//  UIColor+HexColor.h
//  Pods
//
//  Created by 钟建明 on 14/11/12.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColor)

+ (UIColor *)hexColor:(UInt32)hex;
+ (UIColor *)hexColor:(UInt32)hex alpha:(CGFloat)alpha;

@end
