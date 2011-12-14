#import <Foundation/Foundation.h>
#import "WHItem.h"

@class WHTableFrameV;

@interface WHThumbnail : UIView {
	WHTableFrameV	*delegate;
	WHItem			*item;
	
	UIView			*viewSelected;
	UIImageView		*imageView;
	UILabel			*labelName;
	UILabel			*labelPrice;
}
@property (nonatomic, assign) WHTableFrameV *delegate;
@property (nonatomic, assign) WHItem	*item;
@property (nonatomic) BOOL	check;

@end