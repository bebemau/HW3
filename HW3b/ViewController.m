//
//  ViewController.m
//  HW3
//
//  Created by Man, Keren on 2/1/15.
//  Copyright (c) 2015 Man, Keren. All rights reserved.
//

#import "ViewController.h"
#import "TodoItem.h"
#import "TodoList.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self.btnAdd.enabled = false;
    self.btnRemove.enabled=false;
    self.txtItemName.delegate = self;
    self.tblTodoList.delegate = self;
    self.tblTodoList.dataSource = self;
    self.myTodoList = [[TodoList alloc ]init];
    [self.myTodoList set_allowDuplicates: true];
}

- (void)controlTextDidChange:(NSNotification *)notification {
    
    BOOL itemExists = [self.myTodoList hasItemWithTitle:self.txtItemName.stringValue];
    NSLog(itemExists ? @"Yes" : @"No");
    self.btnRemove.enabled = itemExists;
    
    if([self.txtItemName.stringValue  isEqual: @""])
    {
        self.btnAdd.enabled = false;
    }
    else{
        self.btnAdd.enabled = true;
    }
    
}


-(NSView*)tableView:(NSTableView*)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)rowIndex
{
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"tableCellID" owner:nil];
    cell.textField.stringValue=@(rowIndex).stringValue;
    NSLog(@"rowindex %ld", (long)rowIndex);
    NSLog(@"rowindex %ld", (NSUInteger)rowIndex);
    cell.textField.stringValue =[self.myTodoList getItemByIndex:(NSUInteger*)rowIndex].name;
    return cell;
}

-(NSInteger)   numberOfRowsInTableView:(NSTableView *)tableView
{
    return [self.myTodoList itemCount];
}

- (IBAction)btnAddClicked:(id)sender {
    
    [self.myTodoList set_allowDuplicates:self.ckAllowDuplicates.integerValue];
    TodoItem *item = [[TodoItem alloc] init];
    item.name = self.txtItemName.stringValue;
    [self.myTodoList addItem:item];
    [self.tblTodoList reloadData];
    self.txtItemName.stringValue = @"";
}

- (IBAction)btnRemove_Clicked:(id)sender {
    TodoItem *item = [[TodoItem alloc] init];
    item.name = self.txtItemName.stringValue;

    [self.myTodoList removeItem:item];
    [self.tblTodoList reloadData];
}

@end
