//
//  NSDate+HDExtension.h
//  PortableTreasure
//
//  Created by HeDong on 15/5/10.
//  Copyright © 2015年 hedong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (HDExtension)

/**
 *  是否为今天
 */
- (BOOL)hd_isToday;

/**
 *  是否为昨天
 */
- (BOOL)hd_isYesterday;

/**
 *  是否为今年
 */
- (BOOL)hd_isThisYear;

/**
 *  返回一个只有年月日的时间
 */
- (NSDate *)hd_dateWithYMD;

/**
 *  获得与当前时间的差距
 */
- (NSDateComponents *)hd_deltaWithNow;

@end
