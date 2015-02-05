//
//  TodoItem.m
//  HW3
//
//  Created by Man, Keren on 2/1/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import "TodoItem.h"

@implementation TodoItem



+(instancetype)TodoItemName:(NSString*)name
{
    TodoItem *object = [[self alloc] init];
    object.name = name;
    return object;
}

@end
