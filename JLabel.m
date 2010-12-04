//
//  JLabel.m
//  Quack
//
//  Created by Jeremy Tregunna on 10-09-10.
//  Copyright 2010 Jeremy Tregunna. All rights reserved.
//

#import "JLabel.h"


@implementation JLabel


@synthesize verticalAlignment;


- (id)initWithFrame:(CGRect)frame
{
	if((self = [super initWithFrame:frame]))
		self.verticalAlignment = JVerticalAlignmentTop;
	return self;
}


- (void)setVerticalAlignment:(JVerticalAlignment)valign
{
	verticalAlignment = valign;
	[self setNeedsDisplay];
}


- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
	CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
	switch(self.verticalAlignment)
	{
		case JVerticalAlignmentTop:
			textRect.origin.y = bounds.origin.y;
			break;
		case JVerticalAlignmentBottom:
			textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
			break;
		case JVerticalAlignmentMiddle:
			// Fall through.
		default:
			textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}


-(void)drawTextInRect:(CGRect)requestedRect
{
	CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
	[super drawTextInRect:actualRect];
}


@end
