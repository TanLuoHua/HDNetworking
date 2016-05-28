//
//  UITextField+HDExtension.h
//  PortableTreasure
//
//  Created by HeDong on 14/12/1.
//  Copyright © 2014年 hedong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (HDExtension)

/**
 *  添加TextFiled的左边视图(图片)
 */
- (void)hd_addLeftViewWithImage:(NSString *)image;

/**
 *  获取选中光标位置
 *
 *  @return 返回NSRange
 */
- (NSRange)hd_selectedRange;

/**
 *  设置光标位置
 */
- (void)hd_setSelectedRange:(NSRange)range;

@end
