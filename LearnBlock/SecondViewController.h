//
//  SecondViewController.h
//  LearnBlock
//
//  Created by chiyz on 2019/5/27.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

///1️⃣ block当做属性(无返回值，无参）
@property(nonatomic, copy) void(^test1Block)(void);

/// 4️⃣ block当做方法的参数（无返回值有参数）
- (void)method2:(void(^)(NSString *str1,NSString *str2))block2;

@end

NS_ASSUME_NONNULL_END
