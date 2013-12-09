//
//  YKOptionTableViewCell.m
//  YFKit
//
//  Created by Yifeng Wu on 13-12-7.
//  Copyright (c) 2013年 YFKit. All rights reserved.
//

#import "YKOptionTableViewCell.h"
#import "YKOptionDefaultItem.h"

static const CGFloat kOptionDefaultBouncsValue = 30.0f;
static const CGFloat kOptionDefaultAnimationDuration = 0.3f;
static const CGFloat kOptionDefaultOptionMargin = 0.0f;

static const CGFloat kOptionDefaultDeleteWidth = 66.0f;
static const CGFloat kOptionDefaultMoreWidth = 88.0f;

static inline UIColor * GetDeleteItemDefaultColor()
{
    return [UIColor colorWithRed:1.0f green:56/255.0f blue:48.0/255.0f alpha:1.0f];
}

static inline UIColor * GetMoreItemDefaultColor()
{
    return [UIColor grayColor];
}


@interface YKOptionTableViewCell () <UIGestureRecognizerDelegate>

@property (nonatomic, strong) NSMutableArray * internalItemButtons;

@property (nonatomic, strong) UIView * optionsContextView;

@property (nonatomic, strong) UIView * actualContentView;

@property (nonatomic, assign) BOOL optionsContextHidden;

@property (nonatomic, assign) CGFloat optionsContextWidth;

@property (assign, nonatomic) CGFloat initialTouchPositionX;

@property (assign, nonatomic) YKOptionCellStyle style;

@end

@implementation YKOptionTableViewCell

#pragma mark - Private Helper
#pragma mark Default Item

#pragma mark Init and Layout
- (UIButton *)_buttonWithOptionItem:(id<YKOptionItemProtocol>)item
{
    
}

- (void)_resetOptionItemButtons
{
    
}

- (void)_initDefaultOptionItems
{
    NSMutableArray * tempArray = [NSMutableArray arrayWithCapacity:2];
    
    YKOptionDefaultItem * deleteItem = [[YKOptionDefaultItem alloc] init];
    deleteItem.title = @"删除";
    deleteItem.size = CGSizeMake(66.0f, YKOptionItemSizeHorizontalFull);
    deleteItem.color = GetDeleteItemDefaultColor();
    deleteItem.image = nil;
    [tempArray addObject:deleteItem];
    
    if (self.style == YKOptionCellStyleMore) {
        YKOptionDefaultItem * moreItem = [[YKOptionDefaultItem alloc] init];
        moreItem.title = @"更多";
        moreItem.size = CGSizeMake(88.0f, YKOptionItemSizeHorizontalFull);
        moreItem.color = GetMoreItemDefaultColor();
        moreItem.image = nil;
        [tempArray addObject:moreItem];
    }
    
    self.optionItems = [NSArray arrayWithArray:tempArray];
}

- (void)_setupFlags
{
    self.optionsContextHidden = self.optionsContextView.hidden = YES;
    self.shouldDisplayOptionsContextView = NO;
    self.bonuceValue = kOptionDefaultBouncsValue;
    self.optionsContextAnimationDuration = kOptionDefaultAnimationDuration;
    self.optionItemMargin = kOptionDefaultOptionMargin;
}

- (void)_initSubviews
{
    self.actualContentView = [[UIView alloc] initWithFrame:self.contentView.bounds];
    [self addSubview:self.actualContentView];
    self.optionsContextView = [[UIView alloc] initWithFrame:self.actualContentView.bounds];
    [self.contentView insertSubview:self.optionsContextView belowSubview:self.actualContentView];
    
    [self _initDefaultOptionItems];
    [self _setupFlags];
    
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    panRecognizer.delegate = self;
    [self addGestureRecognizer:panRecognizer];
    [self setNeedsLayout];
}

- (id)initWithYKOptionCellStyle:(YKOptionCellStyle)style cellIdentifier:(NSString *)identifier
{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    if (self) {
        self.internalItemButtons = [NSMutableArray arrayWithCapacity:2];
    }
    
    return self;
}

- (void)setOptionsContextHidden:(BOOL)hidden animated:(BOOL)animated completionHandler:(void (^)(void))completionHandler
{
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)handlePan:(UIPanGestureRecognizer *)gestureRecognizer
{
    
}

@end
