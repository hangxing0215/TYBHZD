//
//  DataManager.m
//  TYBHZD
//
//  Created by apple on 16/3/28.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

+(NSArray *)showAllDoc
{
    NSMutableArray *allDoc = [NSMutableArray array];
    
    Doctor *doc1 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"张三三" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:YES isFree:YES price:11];
    Doctor *doc2 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"zhangsan" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:YES isFree:NO price:11];
    Doctor *doc3 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"zhangsan" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:NO isFree:YES price:11];
    Doctor *doc4 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"zhangsan" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:NO isFree:NO price:11];
    Doctor *doc5 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"zhangsan" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:YES isFree:YES price:11];
    Doctor *doc6 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"zhangsan" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:YES isFree:YES price:11];
    
    [allDoc addObject:doc1];
    [allDoc addObject:doc2];
    [allDoc addObject:doc3];
    [allDoc addObject:doc4];
    [allDoc addObject:doc5];
    [allDoc addObject:doc6];
    return [allDoc copy];
}


+(NSArray *)showAllDoc2
{
    NSMutableArray *allDoc = [NSMutableArray array];
    
    Doctor *doc1 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"张三三" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:YES isFree:YES price:11];
    Doctor *doc2 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"zhangsan" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:YES isFree:YES price:11];

    
    [allDoc addObject:doc1];
    [allDoc addObject:doc2];
  
    return [allDoc copy];
}

+(NSArray *)showAllDoc3
{
    NSMutableArray *allDoc = [NSMutableArray array];
    
    Doctor *doc1 = [[Doctor alloc]initwithHeaderImageName:@"header_cry_icon" docName:@"张三三" position:@"步长医院主任" hispital:@"陕西步长医院" detail:@"我就是这么帅" hadAuthored:YES isFree:YES price:11];
    
    
    [allDoc addObject:doc1];
   
    return [allDoc copy];
}






@end
