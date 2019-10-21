//
//  Presenter.m
//  MVPDemo
//
//  Created by 凡客 on 2019/10/22.
//  Copyright © 2019 凡客. All rights reserved.
//

#import "Presenter.h"

@implementation Presenter
- (void)getUserInfo:(NSString *)username completed:(void (^)(BOOL))completed {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (completed) {
            completed([username isEqualToString:@"xyz"]);
        }
    });
}
@end
