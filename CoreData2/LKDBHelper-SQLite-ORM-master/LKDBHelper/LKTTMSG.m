//
//  LKTTMSG.m
//  LKDBHelper
//
//  Created by JNYJ on 15-1-29.
//  Copyright (c) 2015年 ljh. All rights reserved.
//

#import "LKTTMSG.h"

@implementation LKTTMSG

+(NSString *)getRootFolderPath{

	NSString *rootPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
															 NSUserDomainMask, YES) objectAtIndex:0];
	return rootPath;
}
//重载选择 使用的LKDBHelper
+(LKDBHelper *)getUsingLKDBHelper
{
	static LKDBHelper* db;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		NSString* dbpath = [[self getRootFolderPath] stringByAppendingPathComponent:@"QMDatabase742864063.db"];
		db = [[LKDBHelper alloc]initWithDBPath:dbpath];
	});
	return db;
}

//在类 初始化的时候
+(void)initialize
{
	//remove unwant property
	//比如 getTableMapping 返回nil 的时候   会取全部属性  这时候 就可以 用这个方法  移除掉 不要的属性
	[self setTableColumnName:@"MyName" bindingPropertyName:@"name"];
}

//表名
+(NSString *)getTableName
{
	return @"mail";
}

-(NSString *)debugDescription{
	return [NSString stringWithFormat:@"\n -(subject:%@) \n -(resubject:%@) \n -(contents:%@) \n -(date:%@) \n",self.subject,self.resubject,self.abstractcontent,self.date];
}
-(NSString *)description{
	return [NSString stringWithFormat:@"\n -(subject:%@) \n -(resubject:%@) \n -(contents:%@) \n -(date:%@) \n",self.subject,self.resubject,self.abstractcontent,self.date];
}
@end











