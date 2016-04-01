//
//  MessageView.m
//  作业-1
//
//  Created by tarena on 15/11/27.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "MessageView.h"

@implementation MessageView


- (void)drawRect:(CGRect)rect
{
    //1.计算文字占据的宽和高（size）
    CGSize sizeOfText = [self.message boundingRectWithSize:CGSizeMake(200, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor whiteColor]} context:nil].size;
    
    //2.绘制灰色的气泡
    
    CGRect frameOfPop = CGRectMake(self.bounds.size.width-90-sizeOfText.width, 10, sizeOfText.width+20, sizeOfText.height+20);
    UIBezierPath *rectPath = [UIBezierPath bezierPathWithRoundedRect:frameOfPop cornerRadius:10];
    [[UIColor grayColor] setFill];
    [rectPath fill];
    
//    //3.绘制右下角的三角尾巴
    UIBezierPath *triaPath = [UIBezierPath bezierPath];
    [triaPath moveToPoint:CGPointMake(frameOfPop.origin.x + 20, frameOfPop.origin.y)];
    [triaPath addLineToPoint:CGPointMake(frameOfPop.origin.x - 40, frameOfPop.origin.y)];
    [triaPath addLineToPoint:CGPointMake(frameOfPop.origin.x, frameOfPop.origin.y+20)];
    [triaPath closePath];
    [triaPath fill];
    
//    UIBezierPath *triaPath = [UIBezierPath bezierPath];
//    [triaPath moveToPoint:CGPointMake(self.bounds.size.width-20, frameOfPop.size.height)];
//    [triaPath addLineToPoint:CGPointMake(self.bounds.size.width-10, frameOfPop.size.height+10)];
//    [triaPath addLineToPoint:CGPointMake(self.bounds.size.width-30, frameOfPop.size.height+10)];
//    [triaPath closePath];
//    [triaPath fill];
    
    //4.绘制字符串
    [self.message drawInRect:CGRectMake(frameOfPop.origin.x+10, frameOfPop.origin.y+10, sizeOfText.width, sizeOfText.height) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17],NSForegroundColorAttributeName:[UIColor whiteColor]}];
}







@end
