//
//  LKTTMSG.h
//  LKDBHelper
//
//  Created by JNYJ on 15-1-29.
//  Copyright (c) 2015年 ljh. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LKDBHelper.h"

@interface LKTTMSG : NSObject

@property(copy,nonatomic)NSString* subject;
@property(copy,nonatomic)NSString* resubject;
@property(copy,nonatomic)NSString* abstractcontent;
@property(copy, nonatomic)NSDate *date;


@end
