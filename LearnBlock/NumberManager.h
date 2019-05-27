//
//  NumberManager.h
//  LearnBlock
//
//  Created by chiyz on 2019/5/27.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumberManager : NSObject

@property(nonatomic, copy) NumberManager*(^add)(CGFloat number);

@property(nonatomic, copy) NumberManager*(^multiply)(CGFloat number);

@property(nonatomic, assign) CGFloat resultNumber;
//- (instancetype)
@end

NS_ASSUME_NONNULL_END
