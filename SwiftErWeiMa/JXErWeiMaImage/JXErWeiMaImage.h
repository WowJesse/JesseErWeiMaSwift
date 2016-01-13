//
//  JXErWeiMaImage.h
//  SwiftErWeiMa
//
//  Created by bsmac1 on 16/1/13.
//  Copyright © 2016年 bsmac1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JXErWeiMaImage : UIImage
+ (UIImage *)generateQRCode:(NSString *)code width:(CGFloat)width height:(CGFloat)height;
@end
