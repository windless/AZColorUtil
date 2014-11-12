//
//  AZColorUtilTests.m
//  AZColorUtilTests
//
//  Created by Abner Zhong on 11/12/2014.
//  Copyright (c) 2014 Abner Zhong. All rights reserved.
//

#import <UIColor+HexColor.h>

SPEC_BEGIN(HexColor)

describe(@"UIColor", ^{
    describe(@"hexColor", ^{
        it(@"converts to uicolor", ^{
            UIColor *color = [UIColor colorWithRed:100 / 255.0
                                             green:200 / 255.0
                                              blue:255 / 255.0
                                             alpha:1];
            UIColor *newColor = [UIColor hexColor:0x64c8ff];
            [[color should] equal:newColor];
        });

        it(@"convers to UIColor with alpha", ^{
            UIColor *color = [UIColor colorWithRed:100 / 255.0
                                             green:200 / 255.0
                                              blue:255 / 255.0
                                             alpha:0.5];
            UIColor *newColor = [UIColor hexColor:0x64c8ff alpha:0.5];
            [[color should] equal:newColor];
        });
    });
});

SPEC_END
