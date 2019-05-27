//
//  NumberManager.m
//  LearnBlock
//
//  Created by chiyz on 2019/5/27.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "NumberManager.h"

@implementation NumberManager

- (NumberManager * _Nonnull (^)(CGFloat))add {
	
	__weak typeof(self) weakSelf = self;
	return  ^NumberManager * _Nonnull(CGFloat number) {
		weakSelf.resultNumber += number;
		return weakSelf;
	};
}

- (NumberManager * _Nonnull (^)(CGFloat))multiply {
	__weak typeof(self) weakSelf = self;
	
	return  ^NumberManager * _Nonnull(CGFloat number) {
		weakSelf.resultNumber *= number;
		return weakSelf;
	};
}

@end
