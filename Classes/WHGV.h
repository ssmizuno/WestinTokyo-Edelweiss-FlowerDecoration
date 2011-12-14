#import <Foundation/Foundation.h>
#import "WHContentView.h"

#define	PLACE_COUNT	16

@interface WHGV : WHContentView {
	
	NSArray			*itemsForAccessory;
	NSMutableArray	*checkItemsForAccessory;
	
	UIImageView		*imageRoom;
	UIImageView		*imagePlan;
	UIImageView		*imageCloth;
	UIImageView		*imageChair;
	UIImageView		*imageChair2;
	UIImageView		*imageVolume;
	
	UIButton		*button[PLACE_COUNT];
	UIImageView		*imageAccessory[PLACE_COUNT];
}

@property (nonatomic, assign) WHItem	*itemRoom;
@property (nonatomic, assign) WHItem	*itemPlan;
@property (nonatomic, assign) WHItem	*itemCloth;
@property (nonatomic, assign) WHItem	*itemChair;
@property (nonatomic, assign) WHItem	*itemChair2;
@property (nonatomic, assign) WHItem	*itemVolume;
@property (nonatomic, assign) NSMutableArray	*arrAccessory;

@property (nonatomic, assign) NSArray	*itemsForAccessory;
@property (nonatomic, assign) NSMutableArray	*checkItemsForAccessory;

@end