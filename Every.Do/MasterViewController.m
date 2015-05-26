//
//  MasterViewController.m
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDo.h"
#import "ToDoTableViewCell.h"
#import "AddItemViewController.h"

@interface MasterViewController ()

@property NSMutableArray *toDoItemsArray;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    // create ToDo items
    ToDo *item01 = [[ToDo alloc]initWithTitle:@"Get groceries" itemDescription:@"bananas, bread, milk" itemPriority:3 andIsComplete:NO];
    ToDo *item02 = [[ToDo alloc]initWithTitle:@"Get groceries" itemDescription:@"bananas, bread, milk" itemPriority:3 andIsComplete:NO];
    ToDo *item03 = [[ToDo alloc]initWithTitle:@"Get groceries" itemDescription:@"bananas, bread, milk" itemPriority:3 andIsComplete:NO];
    ToDo *item04 = [[ToDo alloc]initWithTitle:@"Get groceries" itemDescription:@"bananas, bread, milk" itemPriority:3 andIsComplete:NO];
    ToDo *item05 = [[ToDo alloc]initWithTitle:@"Get groceries" itemDescription:@"bananas, bread, milk" itemPriority:3 andIsComplete:NO];
    
    self.toDoItemsArray = [NSMutableArray arrayWithObjects:item01, item02, item03, item04, item05, nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.toDoItemsArray) {
        self.toDoItemsArray = [[NSMutableArray alloc] init];
    }
    
    [self performSegueWithIdentifier:@"addToDoItem" sender:nil];
    
//    ToDo *item01 = [[ToDo alloc]initWithTitle:@"addd " itemDescription:@"bananas, bread, milk" itemPriority:3 andIsComplete:NO];
//
//    [self.toDoItemsArray insertObject:item01 atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ToDo *toDoItem = self.toDoItemsArray[indexPath.row];
        [[segue destinationViewController] setDetailItem:toDoItem];
    }
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    AddItemViewController *source = [segue sourceViewController];
    ToDo *toDoItem = source.toDoItem;
    [self.toDoItemsArray addObject:toDoItem];
    [self.tableView reloadData];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoItemsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    ToDo *toDoItem = self.toDoItemsArray[indexPath.row];
    cell.toDoItemTitleCell.text = [toDoItem itemTitle];
    cell.toDoItemDescriptionCell.text = [toDoItem itemDescription];
    cell.toDoItemPriorityCell.text = [NSString stringWithFormat:@"%d",[toDoItem itemPriority]];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.toDoItemsArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
