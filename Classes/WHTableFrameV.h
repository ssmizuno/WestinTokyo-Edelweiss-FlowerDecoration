#import <Foundation/Foundation.h>
#import "WHThumbnail.h"
#import "WHItem.h"


@interface WHTableFrameV : UIScrollView {
	id		controller;
	NSArray	*items;
	NSArray	*checkItems;
}

@property (nonatomic, assign) id	controller;
@property (nonatomic, assign) NSArray	*items;
@property (nonatomic, assign) NSArray	*checkItems;


@end