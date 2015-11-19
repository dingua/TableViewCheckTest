//
//  TableViewController.m
//  TableViewCheckTest
//
//  Created by Mejdi Lassidi on 11/19/15.
//  Copyright © 2015 Dingua. All rights reserved.
//

#import "TableViewController.h"
#import "Entry.h"
#import "EntryTableViewCell.h"

static NSString *const kReuseIdentifier = @"EntryTableViewCell";
@interface TableViewController ()
@property (nonatomic, strong) NSArray *entries;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.entries = @[[[Entry alloc]initWithText:@"entry1"],[[Entry alloc]initWithText:@"entry2"],[[Entry alloc]initWithText:@"entry3"],[[Entry alloc]initWithText:@"entry4"],[[Entry alloc]initWithText:@"entry5"],[[Entry alloc]initWithText:@"entry6"]];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EntryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier forIndexPath:indexPath];
    Entry *entry = (Entry*)self.entries[indexPath.row];
    cell.entryTextLabel.text = entry.text;
    cell.checkButton.tag = indexPath.row;
    [cell.checkButton setTitle:entry.checked?@"checked":@"not checked" forState:UIControlStateNormal];
    cell.delegate = self;
    return cell;
}

- (void)checkButtonPressed:(UIButton*)button {
    Entry *entry = self.entries[button.tag];
    entry.checked = !entry.checked;
    [self.tableView reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:button.tag inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
}

@end
