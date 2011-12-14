#import <UIKit/UIKit.h>
#import "WHItem.h"
#import "AppDelegate+Data.h"

@class AppDelegate;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow	*window;
	UINavigationController	*navigation;
	
	NSInteger		currentRoom;
	NSInteger		currentPlan;
	NSInteger		currentCloth;
	NSInteger		currentChair;
	NSInteger		currentVolume;
	NSMutableArray	*currentAccessories;
	
	NSInteger		currentDress;
	NSInteger		currentBouquet;
	NSInteger		currentDress2;
	NSInteger		currentBouquet2;
	
	NSMutableArray	*checkItemsForPlan;
	NSMutableArray	*checkItemsForCloth;
	NSMutableArray	*checkItemsForChair;
	NSMutableArray	*checkItemsForVolume;
	NSMutableArray	*checkItemsForAccessory;
	
	NSMutableArray	*checkItemsForDress;
	NSMutableArray	*checkItemsForBouquet;
	NSMutableArray	*checkItemsForDress2;
	NSMutableArray	*checkItemsForBouquet2;
}
@property (nonatomic)	NSInteger	currentRoom;
@property (nonatomic)	NSInteger	currentPlan;
@property (nonatomic)	NSInteger	currentCloth;
@property (nonatomic)	NSInteger	currentChair;
@property (nonatomic)	NSInteger	currentVolume;
@property (nonatomic, retain)	NSMutableArray	*currentAccessories;
@property (nonatomic)	NSInteger	currentDress;
@property (nonatomic)	NSInteger	currentBouquet;
@property (nonatomic)	NSInteger	currentDress2;
@property (nonatomic)	NSInteger	currentBouquet2;

@property (nonatomic, retain) NSMutableArray	*checkItemsForPlan;
@property (nonatomic, retain) NSMutableArray	*checkItemsForCloth;
@property (nonatomic, retain) NSMutableArray	*checkItemsForChair;
@property (nonatomic, retain) NSMutableArray	*checkItemsForVolume;
@property (nonatomic, retain) NSMutableArray	*checkItemsForAccessory;
@property (nonatomic, retain) NSMutableArray	*checkItemsForDress;
@property (nonatomic, retain) NSMutableArray	*checkItemsForBouquet;
@property (nonatomic, retain) NSMutableArray	*checkItemsForDress2;
@property (nonatomic, retain) NSMutableArray	*checkItemsForBouquet2;

- (void) replacementCheckForPlan:(NSInteger)_index;
- (void) replacementCheckForCloth:(NSInteger)_index;
- (void) replacementCheckForVolume:(NSInteger)_index;
- (void) replacementCheckForChair:(NSInteger)_index;
- (void) replacementCheckForDress:(NSInteger)_index;
- (void) replacementCheckForBouquet:(NSInteger)_index;
- (void) replacementCheckForDress2:(NSInteger)_index;
- (void) replacementCheckForBouquet2:(NSInteger)_index;

- (void) setZeroForBouquetSimulator;
- (void) setZeroForBouquetSimulator2;
- (void) setZeroForTableSimulator;

@end




@interface AppDelegate (Data)
- (NSArray*) arrayDress;
- (NSArray*) arrayBouquet;
- (NSArray*) arrayRoom;
@end


@interface AppDelegate (DataZ)
- (NSArray*) arrayZRoom;
- (NSArray*) arrayZPlan;
- (NSArray*) arrayZVolume;
- (NSArray*) arrayZCloth;
- (NSArray*) arrayZChair;
- (NSArray*) arrayZVolumeItem;

- (NSArray*) arrayZVolume:(NSInteger)_currentPlan;
- (NSArray*) arrayZVolumeItem:(NSInteger)_volumeIndex;
- (NSArray*) arrayZChair:(NSInteger)_roomIndex;
@end


@interface AppDelegate (DataG)
- (NSArray*) arrayGRoom;
- (NSArray*) arrayGPlan;
- (NSArray*) arrayGVolume;
- (NSArray*) arrayGCloth;
- (NSArray*) arrayGChair;
- (NSArray*) arrayGChair2;
- (NSArray*) arrayGVolumeItem;
- (NSArray*) arrayGCandle:(NSInteger)_planIndex;

- (NSArray*) arrayGVolumeItem:(NSInteger)_volumeIndex;
- (NSArray*) arrayGChair:(NSInteger)_roomIndex;
- (NSArray*) arrayGChair2:(NSInteger)_roomIndex;
@end


@interface AppDelegate (DataM)
- (NSArray*) arrayMRoom;
- (NSArray*) arrayMPlan;
- (NSArray*) arrayMVolume;
- (NSArray*) arrayMCloth;
- (NSArray*) arrayMChair;
- (NSArray*) arrayMChair2;
- (NSArray*) arrayMVolumeItem;

- (NSArray*) arrayMVolume:(NSInteger)_currentPlan;
- (NSArray*) arrayMVolumeItem:(NSInteger)_volumeIndex;
- (NSArray*) arrayMChair:(NSInteger)_roomIndex;
- (NSArray*) arrayMChair2:(NSInteger)_roomIndex;
@end