//
//  ViewController.h
//  LearnBlock
//
//  Created by chiyz on 2019/5/27.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^compleBlock)(void);

@interface ViewController : UIViewController

/// 3️⃣ block当做方法的参数（无返回值无参数）
- (void)method1:(void(^)(void))block1;

/// 4️⃣ block当做方法的参数（无返回值有参数）
- (void)method2:(void(^)(NSString *str1,NSString *str2))block2;

/// 5️⃣ block当做方法的参数（有返回值有参数）
- (void)method3:(NSString *(^)(NSString *str1, NSString *str2))block3;

@property(nonatomic, copy) compleBlock test1;

- (void)method4:(compleBlock)test2;

@end

