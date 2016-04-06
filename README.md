# SunOrderArray

[SunOrderArray](https://github.com/sunbohong/SunOrderArray)是一个用于快速处理网络请求返回数据排序的类。

#Demo

如果某个页面有10个帖子，你通过帖子id发起了10个请求，每次请求成功后，刷新界面。

如果界面的显示方式为按照请求顺序显示。则您可以使用下面的代码实现该功能。

    SunOrderArray *postOrderArray = [SunOrderArray new];


    for (NSInteger index = 0; index < totalPostCount; index) {

      /**
       *  根据index获取pid
       */
      NSString *pid;
      [self getPostWithPID:pid WithBlock:^(NSDictionary *result) {

        [postOrderArray addArray:@[result] WithIndex:index];

        NSLog(@"全部的数据：%@",[postOrderArray allDatas]);
        /**
         *  刷新界面
         */
      } failuer:^{
      }];
    }



如果界面的显示方式为按照请求顺序显示，并且如果第3个没有获取到，第3个后面的数据也不显示。则您可以使用下面的代码实现该功能。

    SunOrderArray *postOrderArray = [SunOrderArray new];


    for (NSInteger index = 0; index < totalPostCount; index) {

      /**
       *  根据index获取pid
       */
      NSString *pid;
      [self getPostWithPID:pid WithBlock:^(NSDictionary *result) {

        [postOrderArray addArray:@[result] WithIndex:index];

        NSLog(@"连续的数据：%@",[postOrderArray continuesDatas]);
        /**
         *  刷新界面
         */
      } failuer:^{
      }];
    }
