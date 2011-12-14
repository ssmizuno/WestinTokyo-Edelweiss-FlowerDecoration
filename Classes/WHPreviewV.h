#import <Foundation/Foundation.h>
#import "WHContentView.h"

#define PLACE_COUNT	16

@interface WHPreviewV : WHContentView {
	
	BOOL	isInput;
	BOOL	existBouquet;
	BOOL	existEvening;
	
	UIImageView	*imageRoom;
	UIImageView	*imagePlan;
	UIImageView	*imageCloth;
	UIImageView	*imageChair;
	UIImageView	*imageChair2;
	UIImageView	*imageVolume;
	UIImageView	*imageVolumeItem;
	UIImageView	*imageDress;
	UIImageView	*imageBouquet;
	UIImageView	*imageDress2;
	UIImageView	*imageBouquet2;
	UIImageView	*imageAccessory[PLACE_COUNT];
	
	UIScrollView	*scrollView;
	NSMutableArray	*arrayReceipt;
	
	UILabel		*labelID;
}
@property (nonatomic, assign) WHItem	*itemRoom;
@property (nonatomic, assign) WHItem	*itemPlan;
@property (nonatomic, assign) WHItem	*itemCloth;
@property (nonatomic, assign) WHItem	*itemChair;
@property (nonatomic, assign) WHItem	*itemChair2;
@property (nonatomic, assign) WHItem	*itemVolume;
@property (nonatomic, assign) WHItem	*itemVolumeItem;
@property (nonatomic, assign) WHItem	*itemDress;
@property (nonatomic, assign) WHItem	*itemBouquet;
@property (nonatomic, assign) WHItem	*itemDress2;
@property (nonatomic, assign) WHItem	*itemBouquet2;
@property (nonatomic, assign) NSArray	*arrayAccessory;
@property (nonatomic, retain) NSString	*textID;

- (void) makeReceipt;


@end