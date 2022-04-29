//
//  CYRouter.m
//  CYRouter
//
//  Created by 胡城阳 on 2022/4/29.
//

#import "CYRouter.h"
#import <objc/message.h>

@implementation CYRouter

//example router URL @"router://CYUserCenterModule/userCenter"
+ (id)openURL:(NSString *)url arg:(NSDictionary *)param error:(NSError *)error callBack:(void (^)(void))callBack{
    
    /** 检验URL合法*/
    if (![url containsString:@"//"]) {
        NSLog(@"不合法的router");
        return nil;
    }
    
    NSArray *urlElementsArrary = [url componentsSeparatedByString:@"//"];
    NSString *pathStr = [urlElementsArrary lastObject];
    
    NSArray *pathElementsArrary = [pathStr componentsSeparatedByString:@"/"];
    /** module名*/
    NSString *moduleStr = [pathElementsArrary firstObject];
    
    /** 接口名*/
    NSString *interfaceStr = [pathElementsArrary lastObject];
    
    NSString *routerStr = [NSString stringWithFormat:@"routerHandle_%@_%@:callback:",moduleStr,interfaceStr];
    
    Class targetClass = NSClassFromString(moduleStr);
    SEL action = NSSelectorFromString(routerStr);
    
    return ((id(*)(id,SEL,id,id))objc_msgSend)(targetClass, action,param,callBack);
}

@end
