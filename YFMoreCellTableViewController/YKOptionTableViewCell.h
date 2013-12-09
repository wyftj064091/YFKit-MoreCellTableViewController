//
//  YKOptionTableViewCell.h
//  YFKit
//
//  Created by Yifeng Wu on 13-12-7.
//  Copyright (c) 2013年 YFKit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YKOptionItemProtocol.h"

typedef enum {
    YKOptionCellStyleDelete = 1,
    YKOptionCellStyleMore = 2,
    YKOptionCellStyleDefault = YKOptionCellStyleMore
}YKOptionCellStyle;

/** @class YKOptionTableViewCell
 * The basic table view cell display in the YKOptionTableViewController.
 * Support pan gesture to display the option context.
 * Subclass of UITableViewCell.
 */
@interface YKOptionTableViewCell : UITableViewCell

/** The array which contains all option items.  */
@property (nonatomic, strong) NSArray * optionItems;

/** The default more item for cell style more. It is nil when the style is default or delete. */
@property (nonatomic, strong) id<YKOptionItemProtocol> moreItem;

/** The default more item for cell style more. It is nil when the style is default or delete. */
@property (nonatomic, strong) id<YKOptionItemProtocol> deleteItem;

/** The real content view for subview input its control view.  */
@property (nonatomic, strong, readonly) UIView * actualContentView;

/** Return the boolean value indicate the option context is hidden. */
@property (nonatomic, assign, readonly) BOOL optionsContextHidden;

/** Return the option context width of all options within the margins. */
@property (nonatomic, assign, readonly) CGFloat optionsContextWidth;

/** The bonuce value for pan gesture. */
@property (nonatomic, assign) CGFloat bonuceValue;

/** The duration for the options context move animations. */
@property (nonatomic, assign) CGFloat optionsContextAnimationDuration;

/** The margin between two option item. */
@property (nonatomic, assign) CGFloat optionItemMargin;

/** Wether the context view should show. */
@property (nonatomic, assign) BOOL shouldDisplayOptionsContextView;

/** Init the YKOptionTableViewCell with given style and identifier.
 * @param style the sylt of the option cell, delete means only one delete item; more means that there are two items more and delete.
 * @param identifer the same as the identifier of UITableViewCell.
 */
- (id)initWithYKOptionCellStyle:(YKOptionCellStyle)style cellIdentifier:(NSString *)identifier;

/** Set the option context state with given params which indicates "hidden"state, animated and the callback after state change.
 * @param hidden the state that the option context will become to.
 * @param animated the flag of if there should be animated during the state change.
 * @param completionHander the callback when the state change will be called.
 */
- (void)setOptionsContextHidden:(BOOL)hidden animated:(BOOL)animated completionHandler:(void (^)(void))completionHandler;

@end
