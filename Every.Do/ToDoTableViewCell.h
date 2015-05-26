//
//  ToDoTableViewCell.h
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *toDoItemTitleCell;
@property (weak, nonatomic) IBOutlet UILabel *toDoItemDescriptionCell;
@property (weak, nonatomic) IBOutlet UILabel *toDoItemPriorityCell;


@end
