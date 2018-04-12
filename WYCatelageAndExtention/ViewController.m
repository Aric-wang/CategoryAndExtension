//
//  ViewController.m
//  WYCatelageAndExtention
//
//  Created by wangyang on 2018/4/12.
//  Copyright © 2018年 com.gmfund.app. All rights reserved.
//

#import "ViewController.h"

#import "FSPeople+FSDDDD.h"

#import "FSPeople+Action.h"

#import "FSFather.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    FSPeople *people = [[FSPeople alloc] init];
    
    // 类别 -- 属性和方法
    people.nameWithSetterGetter = @"类别扩展属性赋值";
    NSLog(@"%@",people.nameWithSetterGetter);
    [people printCategate];
    
    
    // 类扩展 属性和方法
    [people printShow];
    people.extentionString = @"我是类扩展属性";
    NSLog(@"%@",people.extentionString);
    
    FSFather *father = [[FSFather alloc] init];
    father.nameWithSetterGetter = @"类别-子类调用赋值";
    NSLog(@"%@",father.nameWithSetterGetter);
    
    father.extentionString = @"类扩展-子类调用赋值";
    NSLog(@"%@",father.extentionString);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
