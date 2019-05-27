//
//  ViewController.m
//  LearnBlock
//
//  Created by chiyz on 2019/5/27.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "NumberManager.h"



@interface ViewController ()

///1️⃣ block当做属性(无返回值，无参）
@property(nonatomic, copy) void(^test1Block)(void);
///2️⃣ block当做属性（无返回值，有参数）
@property(nonatomic, copy) void(^test2Block)(NSString *Str1,NSString *Str2);

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)method1:(void (^)(void))block1 {
	
}

- (void)method2:(void (^)(NSString *, NSString *))block2 {
	
}

- (void)method3:(NSString *(^)(NSString *, NSString *))block3 {
	
}


- (IBAction)test1Click:(UIButton *)sender {
	SecondViewController *secondVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"secondVC"];
	
	secondVC.test1Block = ^{
		NSLog(@"收到了seconVC 的 block1 属性回调");
	};
	
	[secondVC method2:^(NSString * _Nonnull str1, NSString * _Nonnull str2) {
		NSLog(@"从secondVC的method2方法中返回的 str1 = %@，str2 = %@",str1, str2);
	}];
	
	[self.navigationController pushViewController:secondVC animated:YES];
}

- (IBAction)test2Click:(UIButton *)sender {
	
	NumberManager *testManager = [[NumberManager alloc] init];
	
	testManager.add(123).multiply(4).add(5).multiply(2);
	
	NSLog(@"结果=%f",testManager.resultNumber);
}


@end
