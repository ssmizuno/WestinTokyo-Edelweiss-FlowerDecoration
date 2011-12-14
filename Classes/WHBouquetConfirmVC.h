#import <Foundation/Foundation.h>
#import "WHVC.h"
#import "WHBouquetConfirmV.h"


@interface WHBouquetConfirmVC : WHVC {
	NSArray	*itemsForDress;
	NSArray	*itemsForBouquet;
}
@property (nonatomic, retain) NSArray	*itemsForDress;
@property (nonatomic, retain) NSArray	*itemsForBouquet;

@end