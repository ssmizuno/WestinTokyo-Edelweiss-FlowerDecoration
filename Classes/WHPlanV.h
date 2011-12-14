#import <Foundation/Foundation.h>
#import "WHContentView.h"
#import "WHTableV.h"


@interface WHPlanV : WHContentView {
	NSInteger	currentTabIndex;
	UIButton	*tabButton0;
	UIButton	*tabButton1;
	UIButton	*tabButton2;
	UIButton	*tabButton3;
	WHTableV	*tableViewforPlan;
	WHTableV	*tableViewforVolume;
	WHTableV	*tableViewforCloth;
	WHTableV	*tableViewforChair;
	
	UIImageView	*imageRoom;
	UIImageView	*imagePlan;
	UIImageView	*imageVolume;
	UIImageView	*imageCloth;
	UIImageView	*imageChair;
}

@property (nonatomic) NSInteger	currentTabIndex;
@property (nonatomic, assign) NSArray	*itemsForPlan;
@property (nonatomic, assign) NSArray	*itemsForCloth;
@property (nonatomic, assign) NSArray	*itemsForChair;
@property (nonatomic, assign) NSArray	*itemsForVolume;
@property (nonatomic, assign) NSArray	*checkItemsForPlan;
@property (nonatomic, assign) NSArray	*checkItemsForCloth;
@property (nonatomic, assign) NSArray	*checkItemsForChair;
@property (nonatomic, assign) NSArray	*checkItemsForVolume;

@property (nonatomic, assign) WHItem	*itemRoom;
@property (nonatomic, assign) WHItem	*itemPlan;
@property (nonatomic, assign) WHItem	*itemCloth;
@property (nonatomic, assign) WHItem	*itemChair;
@property (nonatomic, assign) WHItem	*itemVolume;


- (void) reloadAllTable;

@end