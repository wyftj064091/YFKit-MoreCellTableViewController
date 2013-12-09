//
//  YKOptionItemProtocol.h
//  YFMoreCellTableViewController
//
//  Created by Yifeng Wu on 13-12-7.
//  Copyright (c) 2013年 YFKit. All rights reserved.
//

/**
 * Declare TableViewCellOptionItem Protocol
 */
@protocol YKOptionItemProtocol;

/**
 * Define callback for the touch event of option item.
 */
typedef void (^YKOptionItemClickCallback)(id<YKOptionItemProtocol>, NSIndexPath *);

/**
 * When the height of size is horizontal full, the item will fill the height of the cell.
 */
enum  {YKOptionItemSizeHorizontalFull = NSNotFound};

/** @protocol YFOptionItemProtocol
 * A protocol declaring the interface that items interfacing with YKOptionItem must implement.
 */
@protocol YKOptionItemProtocol <NSObject>

/** Return a string value for the title of the item. */
- (NSString *)itemTitle;

/** Return the callback for the touch event of the option item. */
- (YKOptionItemClickCallback)clickEventCallBack;

/** Return the item size for the layout of the parent cell. */
- (CGSize)size;

/** Return the content color of the item. Omit if the content image is existed. */
- (UIColor *)contentColor;

/** Return the content image of the image. Using the image for rendering in the context first. */
- (UIImage *)contentImage;

@end