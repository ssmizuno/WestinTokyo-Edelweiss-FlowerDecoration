#import <Foundation/Foundation.h>
#import "WHVC.h"
#import "WHMV.h"

@interface WHMVC : WHVC{
	
	NSArray		*itemsForRoom;
	NSArray		*itemsForPlan;
	NSArray		*itemsForCloth;
	NSArray		*itemsForChair;
	NSArray		*itemsForChair2;
	NSArray		*itemsForVolume;
	NSArray		*itemsForVolumeItem;
}
@property (nonatomic, retain) NSArray	*itemsForRoom;
@property (nonatomic, retain) NSArray	*itemsForPlan;
@property (nonatomic, retain) NSArray	*itemsForCloth;
@property (nonatomic, retain) NSArray	*itemsForChair;
@property (nonatomic, retain) NSArray	*itemsForChair2;
@property (nonatomic, retain) NSArray	*itemsForVolume;
@property (nonatomic, retain) NSArray	*itemsForVolumeItem;


@end