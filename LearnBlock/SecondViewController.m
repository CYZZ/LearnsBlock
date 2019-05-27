//
//  SecondViewController.m
//  LearnBlock
//
//  Created by chiyz on 2019/5/27.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property(nonatomic, copy) void(^block3)(NSString *str1,NSString *str2);

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)method2:(void (^)(NSString * _Nonnull, NSString * _Nonnull))block2 {
	
	NSLog(@"block2 = %@",block2);
	if (block2) {
		self.block3 = ^(NSString *str1, NSString *str2) {
			block2(str1,str2);
		};
//		self.block3 = block2;
	}
}


- (IBAction)test3Click:(UIButton *)sender {
	
	if (self.test1Block) {
		self.test1Block();
	}
}

- (IBAction)test4Click:(UIButton *)sender {
	if (self.block3) {
		self.block3(@"abc", @"123efg");
	}
}


- (IBAction)test5Click:(UIButton *)sender {
	
}


- (IBAction)test6Click:(UIButton *)sender {
	
}


- (void)dealloc {
	NSLog(@"func = %s",__func__);
}

@end
