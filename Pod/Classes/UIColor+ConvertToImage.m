//
//  UIColor+ConverToImage.m
//  Pods
//
//  Created by 钟建明 on 14/11/12.
//
//

#import "UIColor+ConvertToImage.h"

@implementation UIColor (ConverToImage)

- (UIImage *)az_imageWithSize:(CGSize)size {
  CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
  UIGraphicsBeginImageContext(rect.size);
  CGContextRef context = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(context, [self CGColor]);
  CGContextFillRect(context, rect);

  UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return theImage;
}

@end
