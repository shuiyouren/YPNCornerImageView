//
//  YPNCornerImageView.m
//  MutTheardTest
//
//  Created by syr on 15/8/19.
//  Copyright (c) 2015年 syr. All rights reserved.
//

#import "YPNCornerImageView.h"

@implementation YPNCornerImageView

- (void)awakeFromNib {
    
}

- (void)setImage:(UIImage *)image {
    if (image) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            CGSize imageSize = image.size;
            CGFloat scale = [UIScreen mainScreen].scale;
            CGFloat width = imageSize.width/scale;
            CGFloat height = imageSize.height/scale;
            UIGraphicsBeginImageContextWithOptions(CGSizeMake(width, height), NO, 0);
            CGRect rect = CGRectMake(0, 0, width, height);
            [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:_cornerRadius] addClip];
            [image drawInRect:rect];
            
            UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            dispatch_async(dispatch_get_main_queue(), ^{
                [super setImage:newImage];
            });
        });
    }
    else {
        [super setImage:image];
    }
}

@end
