//
//  NewVoiceMaskView.h
//  NewVoice
//
//  Created by 张飞 on 2020/3/10.
//  Copyright © 2020 zhangfei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewVoiceMaskView : UIView
-(instancetype)initWithFrame:(CGRect)frame;

+(instancetype)makeViewWithMask:(CGRect)frame andView:(UIView*)view;

-(void)block:(void(^)(void))block;

@end

NS_ASSUME_NONNULL_END
