//
//  TodoList.h
//  HW3
//
//  Created by Man, Keren on 2/1/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TodoItem.h"

@interface TodoList : NSObject
@property (nonatomic, readwrite) BOOL _allowDuplicates;
@property (nonatomic, readwrite) NSMutableArray *_todoList;


-(void)addItem:(TodoItem*)item;    // insert item if OK
-(void)removeItem:(TodoItem*)item;    // remove item
-(BOOL)canAddItem:(TodoItem*)item; // check if OK to insert
-(TodoItem*)getItemByIndex: (NSUInteger*)index;
-(BOOL)hasItemWithTitle:(NSString*)title; // check if any item contained already has same title
-(NSUInteger)itemCount; // number of items contained in list


@end
