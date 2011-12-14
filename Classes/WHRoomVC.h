#import <UIKit/UIKit.h>
#import "WHVC.h"
#import "WHRoomV.h"


@interface WHRoomVC : WHVC {
	NSArray	*itemsForRoom;
}
@property (nonatomic, retain) NSArray	*itemsForRoom;

@end