//
//  NSObject+Name.m
//  NSObject_Category
//
//  Created by Doman on 17/3/22.
//  Copyright © 2017年 doman. All rights reserved.
//

#import "NSObject+Name.h"
#import <objc/runtime.h>

static void *kName = &kName;
@implementation NSObject (Name)

-(void)setName:(NSString *)name
{
    // object:给哪个对象添加属性
    // key:属性名,根据key去获取关联的对象 ,void * == id
    // value:关联的值
    // policy:策略
    objc_setAssociatedObject(self, kName, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name
{
    return objc_getAssociatedObject(self, kName);
}

@end
