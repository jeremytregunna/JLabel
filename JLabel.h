//
//  JLabel.h
//  Quack
//
//  Created by Jeremy Tregunna on 10-09-10.
//  Copyright 2010 Jeremy Tregunna. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum JVerticalAlignment
{
    JVerticalAlignmentTop,
    JVerticalAlignmentMiddle,
    JVerticalAlignmentBottom,
} JVerticalAlignment;

@interface JLabel : UILabel
{
@private
	JVerticalAlignment verticalAlignment;
}

@property (nonatomic, assign) JVerticalAlignment verticalAlignment;

@end