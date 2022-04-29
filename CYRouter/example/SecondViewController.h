//
//  SecondViewController.h
//  CYRouter
//
//  Created by 胡城阳 on 2022/4/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (nonatomic,strong)void (^blockTest)(void);

@end

NS_ASSUME_NONNULL_END
