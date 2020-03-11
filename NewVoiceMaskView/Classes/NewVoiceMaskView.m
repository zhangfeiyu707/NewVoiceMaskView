//
//  NewVoiceMaskView.m
//  NewVoice
//
//  Created by 张飞 on 2020/3/10.
//  Copyright © 2020 zhangfei. All rights reserved.
//

#import "NewVoiceMaskView.h"
//#import "NEWVAppDelegate.h"
@implementation NewVoiceMaskView

//初始化View以及添加单击蒙层逻辑

-(instancetype)initWithFrame:(CGRect)frame{
   
    if (self = [super initWithFrame:frame]) {
      self.frame = frame;
      self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
      self.userInteractionEnabled = YES;
      UITapGestureRecognizer *pan = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeView)];
      [self addGestureRecognizer:pan];
    }
    return self;
}

//蒙层添加到Window上
+(instancetype)makeViewWithMask:(CGRect)frame andView:(UIView*)view {
   NewVoiceMaskView *mview = [[self alloc]initWithFrame:frame];
//   NEWVAppDelegate *delegate = (AppDelegate *)[NEWVAppDelegate sharedApplication].delegate;
//   [delegate.window addSubview:mview];
//   [mview addSubview:view];
   return mview;
}

//单击蒙层取消蒙层
-(void)removeView{
 [self removeFromSuperview];
}

//通过回调取消蒙层
-(void)block:(void(^)(void))block{
   [self removeFromSuperview];
   block();
}


@end
