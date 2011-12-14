#import <Foundation/Foundation.h>
#import "WHVC.h"
#import "WHBWeddingV.h"

@interface WHBWeddingVC : WHVC{
	
	NSArray	*itemsForDress;
	NSArray	*itemsForBouquet;
}
@property (nonatomic, retain) NSArray	*itemsForDress;
@property (nonatomic, retain) NSArray	*itemsForBouquet;

- (void) updateImage;

@end