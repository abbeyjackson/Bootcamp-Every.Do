//
//  ToDo.h
//  Every.Do
//
//  Created by Abegael Jackson on 2015-05-26.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (nonatomic) NSString *itemTitle;
@property (nonatomic) NSString *itemDescription;
@property (assign) int itemPriority;
@property (assign) BOOL isComplete;

-(instancetype)initWithTitle:(NSString*)itemTitle itemDescription:(NSString*)itemDescription itemPriority:(int)itemPriority andIsComplete:(BOOL)isComplete;

@end
