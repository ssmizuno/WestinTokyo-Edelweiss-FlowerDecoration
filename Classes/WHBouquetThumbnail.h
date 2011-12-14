#import <Foundation/Foundation.h>
#import "WHItem.h"


@class WHBouquetFrameV;

@interface WHBouquetThumbnail : UIView {
	WHBouquetFrameV	*delegate;
	WHItem			*item;
	
	UIView			*viewSelected;
	UIImageView		*imageView;
	UILabel			*labelName;
	UILabel			*labelPrice;
}
@property (nonatomic, assign) WHBouquetFrameV *delegate;
@property (nonatomic, assign) WHItem	*item;
@property (nonatomic) BOOL	check;

@end