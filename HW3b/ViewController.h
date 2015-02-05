//
//  ViewController.h
//  HW3
//
//  Created by Man, Keren on 2/1/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TodoList.h"

@interface ViewController : NSViewController <
    NSTableViewDataSource,
    NSTableViewDelegate,
    NSTextFieldDelegate
    >

@property (weak) IBOutlet NSTextField *txtItemName;
@property (weak) IBOutlet NSTableView *tblTodoList;
@property (weak) IBOutlet NSButton *btnAdd;
@property (weak) IBOutlet NSButton *btnRemove;
@property (strong) IBOutlet TodoList *myTodoList;
@property (weak) IBOutlet NSButton *ckAllowDuplicates;


@end
