//
//  AddItemViewController.h
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewController : UIViewController<UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *addToDoItemTitle;
@property (weak, nonatomic) IBOutlet UITextField *addToDoItemDescription;
@property (weak, nonatomic) IBOutlet UITextField *addToDoItemPriority;

@end
