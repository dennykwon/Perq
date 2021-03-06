//
//  PQCommentViewCell.m
//  Perq
//
//  Created by Dan Kwon on 8/5/14.
//  Copyright (c) 2014 TheGridMedia. All rights reserved.
//

#import "PQCommentViewCell.h"
#import "Config.h"

@implementation PQCommentViewCell
@synthesize lblText;
@synthesize lblDate;

#define kTextLabelFont [UIFont systemFontOfSize:14.0f]

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor clearColor];
        
        CGFloat dimen = 32.0f;
        UIImageView *icon = [[UIImageView alloc] initWithFrame:CGRectMake(8.0f, 32.0f, dimen, dimen)];
        icon.layer.cornerRadius = 0.5f*dimen;
        icon.layer.masksToBounds = YES;
        icon.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:icon];
        
        CGFloat x = 50.0f;
        UIView *background = [[UIView alloc] initWithFrame:CGRectMake(x, 0, frame.size.width-x, frame.size.height-10.0f)];
        background.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        background.backgroundColor = [UIColor whiteColor];
        background.alpha = 0.25f;
        background.layer.cornerRadius = 3.0f;
        background.layer.masksToBounds = YES;
        [self.contentView addSubview:background];
        
        CGFloat y = 5.0f;
        self.lblText = [[UILabel alloc] initWithFrame:CGRectMake(x+10.0f, y, background.frame.size.width-20, background.frame.size.height-20)];
        self.lblText.textColor = [UIColor whiteColor];
        self.lblText.font = kTextLabelFont;
        self.lblText.numberOfLines = 0;
        self.lblText.lineBreakMode = NSLineBreakByWordWrapping;
        [self.contentView addSubview:self.lblText];
        y += self.lblText.frame.size.height;
        
        self.lblDate = [[UILabel alloc] initWithFrame:CGRectMake(x+10.0f, y, background.frame.size.width-20, 13.0f)];
        self.lblDate.backgroundColor = [UIColor clearColor];
        self.lblDate.textAlignment = NSTextAlignmentRight;
        self.lblDate.textColor = [UIColor lightGrayColor];
        self.lblDate.font = [UIFont systemFontOfSize:11.0f];
        [self.contentView addSubview:self.lblDate];
        
    }
    return self;
}

+ (CGFloat)textLabelWidth
{
    CGFloat width = [UIScreen mainScreen].applicationFrame.size.width-30.0f-24.0f-70.0f;
    return width;
}

+ (UIFont *)textLabelFont
{
    return kTextLabelFont;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
