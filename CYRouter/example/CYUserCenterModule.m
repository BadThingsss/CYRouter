//
//  CYUserCenterModule.m
//  CYRouter
//
//  Created by 胡城阳 on 2022/4/29.
//

#import "CYUserCenterModule.h"
#import "CYRouter.h"
#import "SecondViewController.h"

@implementation CYUserCenterModule

CYROUTER_EXTERN_METHOD(CYUserCenterModule, userCenter, arg, callBack){
    SecondViewController *vc = [SecondViewController new];
    vc.blockTest = callback;
    return vc;
}

@end
