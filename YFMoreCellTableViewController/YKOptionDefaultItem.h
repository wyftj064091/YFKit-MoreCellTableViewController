//
//  YKOptionDefaultItem.h
//  YFMoreCellTableViewController
//
//  Created by Yifeng Wu on 13-12-7.
//  Copyright (c) 2013年 YFKit. All rights reserved.
//

#import "YKOptionItemProtocol.h"

@interface YKOptionDefaultItem : NSObject <YKOptionItemProtocol>

@property (nonatomic, strong) NSString * title;

@property (nonatomic, assign) CGSize size;

@property (nonatomic, strong) UIColor * color;

@property (nonatomic, strong) UIImage * image;

@property (nonatomic, strong) YKOptionItemClickCallback clickCallback;
@end
