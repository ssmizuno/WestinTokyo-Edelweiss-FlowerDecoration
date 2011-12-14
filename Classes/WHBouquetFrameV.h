#import <Foundation/Foundation.h>
#import "WHBouquetThumbnail.h"


@interface WHBouquetFrameV : UIScrollView {
	id		controller;
	NSArray	*items;
	NSArray	*checkItems;
}

@property (nonatomic, assign) id	controller;
@property (nonatomic, assign) NSArray	*items;
@property (nonatomic, assign) NSArray	*checkItems;


@end