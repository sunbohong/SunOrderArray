//
//  SunOrderArray.h
//  孙博弘
//
//  Created by 孙博弘 on 16/4/6.
//  Copyright © 2016年 孙博弘. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SunOrderArray : NSObject

/**
 *  数组的数量。比如每个数组长度为10，返回了0.1.2.5，则返回4
 *
 */
-(NSUInteger)arrCount;

/**
 *  数组的数量。比如每个数组长度为10，返回了0.1.2.5，则返回3
 *
 */
-(NSUInteger)continuesArrCount;



/**
 *  全部数据的数量。比如每个数组长度为10，返回了0.1.2.5，则返回40
 *
 *  @return <#return value description#>
 */
-(NSUInteger)allDataCount;

/**
 *  连续的数据包含的数量。比如每个数组长度为10，返回了0.1.2.5，则返回30
 *
 *  @return <#return value description#>
 */
-(NSUInteger)continuesDataCount;

/**
 *  连续的数据。
 *
 *  @return <#return value description#>
 */
-(NSMutableArray*)continuesDatas;

/**
 *  全部的数据
 *
 *  @return <#return value description#>
 */
-(NSMutableArray*)allDatas;

/**
 *  添加数组，index从0开始算起。
 *
 *  @param arr   <#arr description#>
 *  @param index <#index description#>
 */
-(void)addArray:(NSArray*)arr WithIndex:(NSUInteger)index;

@end
