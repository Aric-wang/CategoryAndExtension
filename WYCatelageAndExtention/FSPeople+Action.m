//
//  FSPeople+Action.m
//  WYCatelageAndExtention
//
//  Created by wangyang on 2018/4/12.
//  Copyright © 2018年 com.gmfund.app. All rights reserved.
//

#import "FSPeople+Action.h"
#import <objc/runtime.h>

static NSString *nameWithSetterGetterKey = @"nameWithSetterGetterKey";

@implementation FSPeople (Action)

- (void)setNameWithSetterGetter:(NSString *)nameWithSetterGetter{

    objc_setAssociatedObject(self, &nameWithSetterGetterKey, nameWithSetterGetter, OBJC_ASSOCIATION_COPY);
}

- (NSString *)nameWithSetterGetter{

    return objc_getAssociatedObject(self, &nameWithSetterGetterKey);
}

- (void)printCategate{

    NSLog(@"我是类别");
}

@end
