//
//  DetailViewController.m
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "DetailViewController.h"
#import "MasterViewController.h"
#import "ToDo.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDo*)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.toDoItemDetailTitle.text = [self.detailItem itemTitle];
        self.toDoItemDetailDescription.text = [self.detailItem itemDescription];
        self.toDoItemDetailPriority.text = [NSString stringWithFormat:@"%d", [self.detailItem itemPriority]];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
