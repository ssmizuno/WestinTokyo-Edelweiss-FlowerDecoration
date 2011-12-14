#import <Foundation/Foundation.h>
#import "WHVC.h"
#import "WHPlanV.h"
#import "WHTableV.h"

@interface WHPlanVC : WHVC <WHTableVDelegate>{
	
	NSArray			*itemsForRoom;
	NSArray			*itemsForPlan;
	NSArray			*itemsForCloth;
	NSArray			*itemsForChair;
	NSArray			*itemsForVolume;
	NSArray			*itemsForVolumeItem;
}
@property (nonatomic, retain) NSArray	*itemsForRoom;
@property (nonatomic, retain) NSArray	*itemsForPlan;
@property (nonatomic, retain) NSArray	*itemsForCloth;
@property (nonatomic, retain) NSArray	*itemsForChair;
@property (nonatomic, retain) NSArray	*itemsForVolume;
@property (nonatomic, retain) NSArray	*itemsForVolumeItem;

- (void) updateImage;
- (void) changeChair:(BOOL)_isRedCloth;
- (void) changeCloth:(BOOL)_isGraceChair;
- (void) changeVolume:(BOOL)_isNothing;


@end