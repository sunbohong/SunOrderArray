//
//  SunOrderArray.m
//  孙博弘
//
//  Created by 孙博弘 on 16/4/6.
//  Copyright © 2016年 孙博弘. All rights reserved.
//

#import "SunOrderArray.h"

@interface SunOrderArray ()

@property(nonatomic,strong)NSMutableDictionary<NSNumber*,NSArray *> *orginData;

@end

@implementation SunOrderArray

-(instancetype)init{
  if (self=[super init]) {
    _orginData=[NSMutableDictionary dictionary];
  }
  return self;
}


/**
 *  数组的数量。比如每个数组长度为10，返回了0.1.2.5，则返回4
 *
 */
-(NSUInteger)arrCount{
  return self.orginData.count;
}

/**
 *  数组的数量。比如每个数组长度为10，返回了0.1.2.5，则返回3
 *
 */
-(NSUInteger)continuesArrCount{
  NSArray<NSNumber*> *sortedKeys = [self.orginData.allKeys sortedArrayUsingSelector:@selector(compare:)];

  __block  NSUInteger index = 0;
  [sortedKeys enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    if ([obj unsignedIntegerValue]==index++) {

    }else{
      *stop=true;
    }
  }];

  NSUInteger result = index;
  return result;
}



/**
 *  全部数据的数量。比如每个数组长度为10，返回了0.1.2.5，则返回40
 *
 *  @return <#return value description#>
 */
-(NSUInteger)allDataCount{
  return [self allDatas].count;
}

/**
 *  连续的数据包含的数量。比如每个数组长度为10，返回了0.1.2.5，则返回30
 *
 *  @return <#return value description#>
 */
-(NSUInteger)continuesDataCount{
  return [self continuesDatas].count;
}

/**
 *  连续的数据。
 *
 *  @return <#return value description#>
 */
-(NSMutableArray*)continuesDatas{
  NSMutableArray *data=[NSMutableArray array];

  NSArray<NSNumber*> *sortedKeys = [self.orginData.allKeys sortedArrayUsingSelector:@selector(compare:)];

  __block  NSUInteger index = 0;
  [sortedKeys enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    if ([obj unsignedIntegerValue]==index++) {
      [data addObjectsFromArray:[self.orginData objectForKey:obj]];
    }else{
      *stop=true;
    }
  }];

  return data;
}


/**
 *  全部的数据
 *
 *  @return <#return value description#>
 */
-(NSMutableArray*)allDatas{
  NSMutableArray *data=[NSMutableArray array];

  NSArray<NSNumber*> *sortedKeys = [self.orginData.allKeys sortedArrayUsingSelector:@selector(compare:)];

  [sortedKeys enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [data addObjectsFromArray:[self.orginData objectForKey:obj]];
  }];

  return data;
}

/**
 *  添加数组，index从0开始算起。
 *
 *  @param arr   <#arr description#>
 *  @param index <#index description#>
 */
-(void)addArray:(NSArray*)arr WithIndex:(NSUInteger)index{
  if ([arr isKindOfClass:[NSArray class]]) {
    self.orginData[@(index)]=arr;
  }
}
@end
