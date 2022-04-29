//
//  CYRouter.h
//  CYRouter
//
//  Created by 胡城阳 on 2022/4/29.
//

#import <Foundation/Foundation.h>

// 组件对外公开接口, m组件名, i接口名, p(arg)接收参数, c(callback)回调block
#define CYROUTER_EXTERN_METHOD(m,i,p,c) + (id) routerHandle_##m##_##i:(NSDictionary*)arg callback:(id)callback

NS_ASSUME_NONNULL_BEGIN

@interface CYRouter : NSObject

//所有参数放param 不拼接到URL上
+ (id)openURL:(NSString *)stringUrl arg:(NSDictionary * _Nullable)param error:(NSError * _Nullable)error callBack:(void (^ _Nullable)(void))callBack;

@end

NS_ASSUME_NONNULL_END
