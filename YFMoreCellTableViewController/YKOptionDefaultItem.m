//
//  YKOptionDefaultItem.m
//  YFMoreCellTableViewController
//
//  Created by Yifeng Wu on 13-12-7.
//  Copyright (c) 2013年 YFKit. All rights reserved.
//

#import "YKOptionDefaultItem.h"

@implementation YKOptionDefaultItem

- (NSString *)itemTitle
{
    return self.title;
}

- (CGSize)size
{
    return self.size;
}

- (UIColor *)contentColor
{
    return self.color;
}

- (UIImage *)contentImage
{
    return self.image;
}

- (YKOptionItemClickCallback)clickEventCallBack
{
    return self.clickCallback;
}

@end
