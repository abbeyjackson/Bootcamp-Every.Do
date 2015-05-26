//
//  DetailViewController.h
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ToDo;

@interface DetailViewController : UIViewController

@property (nonatomic) ToDo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *toDoItemDetailTitle;
@property (weak, nonatomic) IBOutlet UILabel *toDoItemDetailDescription;
@property (weak, nonatomic) IBOutlet UILabel *toDoItemDetailPriority;

@end

