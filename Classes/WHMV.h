#import <Foundation/Foundation.h>
#import "WHContentView.h"
#import "WHTableV.h"


@interface WHMV : WHContentView {
	
	UIImageView		*imageRoom;
	UIImageView		*imagePlan;
	UIImageView		*imageCloth;
	UIImageView		*imageChair;
	UIImageView		*imageChair2;
	UIImageView		*imageVolume;
	UIImageView		*imageVolumeItem;
	
	UIScrollView	*scrollView;
	NSMutableArray	*arrayReceipt;
}
@property (nonatomic, assign) WHItem	*itemRoom;
@property (nonatomic, assign) WHItem	*itemPlan;
@property (nonatomic, assign) WHItem	*itemCloth;
@property (nonatomic, assign) WHItem	*itemChair;
@property (nonatomic, assign) WHItem	*itemChair2;
@property (nonatomic, assign) WHItem	*itemVolume;
@property (nonatomic, assign) WHItem	*itemVolumeItem;

- (void) makeReceipt;

@end