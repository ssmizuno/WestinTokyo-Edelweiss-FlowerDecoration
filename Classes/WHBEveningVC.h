#import <Foundation/Foundation.h>
#import "WHVC.h"
#import "WHBEveningV.h"
#import "WHTableV.h"

@interface WHBEveningVC : WHVC <WHTableVDelegate>{
	
	NSArray	*itemsForDress;
	NSArray	*itemsForBouquet;
}
@property (nonatomic, retain) NSArray	*itemsForDress;
@property (nonatomic, retain) NSArray	*itemsForBouquet;

- (void) updateImage;

@end