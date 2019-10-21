//
//  ViewController.m
//  MVPDemo
//
//  Created by 凡客 on 2019/10/22.
//  Copyright © 2019 凡客. All rights reserved.
//

#import "ViewController.h"
#import "IView.h"
#import "Presenter.h"

@interface ViewController ()<IView>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *resLabel;
@property (strong, nonatomic) Presenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.presenter = [Presenter new];
    
}

- (void)setRes:(NSString *)res {
    self.resLabel.text = res;
}

- (IBAction)login:(id)sender {
    __weak ViewController *weakSelf = self;
    [weakSelf.presenter getUserInfo:weakSelf.textField.text completed:^(BOOL success) {
        __strong ViewController *strongSelf = weakSelf;
        [strongSelf setRes:(success ? @"success" : @"fail")];
    }];
}

@end
