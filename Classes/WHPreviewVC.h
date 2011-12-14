#import <Foundation/Foundation.h>
#import "WHPreviewVC+Addition.h"
#import "WHVC.h"
#import "WHPreviewV.h"

@interface WHPreviewVC : WHVC {
	NSString	*inputID;
	BOOL		isInput;
	BOOL		existBouquet;
	BOOL		existEvening;
	NSArray		*itemsForRoom;
	NSArray		*itemsForPlan;
	NSArray		*itemsForCloth;
	NSArray		*itemsForChair;
	NSArray		*itemsForChair2;
	NSArray		*itemsForVolume;
	NSArray		*itemsForVolumeItem;
	NSArray		*itemsForDress;
	NSArray		*itemsForBouquet;
	NSArray		*arrayAccessory;
	
	NSInteger	currentRoom;
	NSInteger	currentPlan;
	NSInteger	currentCloth;
	NSInteger	currentChair;
	NSInteger	currentVolume;
	NSInteger	currentDressW;
	NSInteger	currentBouquetW;
	NSInteger	currentDressE;
	NSInteger	currentBouquetE;
	NSArray		*currentAccessory;
}
@property (nonatomic,retain)	NSString	*inputID;
@property (nonatomic)	BOOL	isInput;
@property (nonatomic)	BOOL	existBouquet;
@property (nonatomic)	BOOL	existEvening;


@property (nonatomic, retain) NSArray	*itemsForRoom;
@property (nonatomic, retain) NSArray	*itemsForPlan;
@property (nonatomic, retain) NSArray	*itemsForCloth;
@property (nonatomic, retain) NSArray	*itemsForChair;
@property (nonatomic, retain) NSArray	*itemsForChair2;
@property (nonatomic, retain) NSArray	*itemsForVolume;
@property (nonatomic, retain) NSArray	*itemsForVolumeItem;
@property (nonatomic, retain) NSArray	*itemsForDress;
@property (nonatomic, retain) NSArray	*itemsForBouquet;
@property (nonatomic, retain) NSArray	*currentAccessory;

- (void) updateImage;

@end



@interface WHPreviewVC (forID)
- (BOOL) checkID:(NSString*)_text;
- (NSString*) makeID:(NSString*)_inputID;
- (void) trimID:(NSString*)_textID;

- (int) str2Hex:(NSString*)_str;
- (NSString*) hex2Str:(int)_hex;
@end