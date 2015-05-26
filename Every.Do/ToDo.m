//
//  ToDo.m
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

-(instancetype)initWithTitle:(NSString*)itemTitle itemDescription:(NSString*)itemDescription itemPriority:(int)itemPriority andIsComplete:(BOOL)isComplete{
    self = [super init];
    if (self) {
        _itemTitle = itemTitle;
        _itemDescription = itemDescription;
        _itemPriority = itemPriority;
        _isComplete = isComplete;
    }
    return self;
}

@end
