//
//  IPresenter.h
//  MVPDemo
//
//  Created by 凡客 on 2019/10/22.
//  Copyright © 2019 凡客. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IPresenter <NSObject>
- (void)getUserInfo:(NSString *)username completed:(void (^)(BOOL success))completed;
@end
