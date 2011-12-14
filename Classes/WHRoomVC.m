#import "WHRoomVC.h"



@implementation WHRoomVC


@synthesize itemsForRoom;


#pragma mark -
#pragma mark override

- (id) init{
	if((self = [super init])){
		[appDelegate setZeroForTableSimulator];
		
		self.itemsForRoom	= [appDelegate arrayRoom];
	}
	return self;
}
		
- (void) loadView{
	[super loadView];
	self.showRightButton	= NO;

	WHRoomV* tmpcontentView		= [[[WHRoomV alloc]init]autorelease];
	tmpcontentView.controller	= self;
	tmpcontentView.itemsForRoom	= itemsForRoom;
	self.contentView = tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) dealloc{
	safe_release(itemsForRoom);
	[super dealloc];
}


@end