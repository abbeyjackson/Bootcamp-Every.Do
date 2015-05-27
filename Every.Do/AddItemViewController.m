//
//  AddItemViewController.m
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "AddItemViewController.h"
#import "MasterViewController.h"
#import "ToDo.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.doneButton) return;
    if (self.addToDoItemTitle.text.length > 0){
        self.toDoItem = [[ToDo alloc]initWithTitle:self.addToDoItemTitle.text itemDescription:self.addToDoItemDescription.text itemPriority:[self.addToDoItemPriority.text intValue] andIsComplete:NO];
    }
}


@end
