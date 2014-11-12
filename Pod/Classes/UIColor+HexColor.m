//
//  UIColor+HexColor.m
//  Pods
//
//  Created by 钟建明 on 14/11/12.
//
//

#import "UIColor+HexColor.h"

@implementation UIColor (HexColor)

+ (UIColor *)hexColor:(UInt32)hex {
  return [self hexColor:hex alpha:1.0];
}

+ (UIColor *)hexColor:(UInt32)hex alpha:(CGFloat)alpha {
  return [UIColor colorWithRed:((hex & 0xFF0000) >> 16) / 255.0
                         green:((hex & 0x00FF00) >> 8) / 255.0
                          blue:((hex & 0xFF) >> 0) / 255.0
                         alpha:alpha];
}

@end
