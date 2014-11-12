//
//  AZViewController.m
//  AZColorUtil
//
//  Created by Abner Zhong on 11/12/2014.
//  Copyright (c) 2014 Abner Zhong. All rights reserved.
//

#import "AZViewController.h"
#import <AZColorUtil.h>

@interface AZViewController ()

@end

@implementation AZViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor hexColor:0xffffff];

  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  button.frame = CGRectMake(100, 100, 100, 100);
  UIImage *image = [[UIColor redColor] az_imageWithSize:button.frame.size];
  [button setImage:image forState:UIControlStateNormal];
  [button setImage:[[UIColor blueColor] az_imageWithSize:button.frame.size]
          forState:UIControlStateHighlighted];
  button.imageView.contentMode = UIViewContentModeScaleToFill;
  [self.view addSubview:button];
}

@end
