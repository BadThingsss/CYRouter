//
//  ViewController.m
//  CYRouter
//
//  Created by 胡城阳 on 2022/4/28.
//


#import "ViewController.h"
#import "SecondViewController.h"
#import "CYRouter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    btn.backgroundColor = UIColor.redColor;
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view.
}

- (void)clickBtn{
    ViewController *vc = [CYRouter openURL:@"router://CYUserCenterModule/userCenter" arg:nil error:nil callBack:nil];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
