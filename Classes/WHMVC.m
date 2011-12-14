#import "WHMVC.h"


@implementation WHMVC


@synthesize itemsForRoom;
@synthesize itemsForPlan;
@synthesize itemsForCloth;
@synthesize itemsForChair;
@synthesize itemsForChair2;
@synthesize itemsForVolume;
@synthesize itemsForVolumeItem;


- (id)init{
	if((self = [super init])){
		
		self.itemsForRoom		= [appDelegate arrayMRoom];
		self.itemsForPlan		= [appDelegate arrayMPlan];
		self.itemsForVolume		= [appDelegate arrayMVolume];
		self.itemsForVolumeItem	= [appDelegate arrayMVolumeItem];
		self.itemsForCloth		= [appDelegate arrayMCloth];
		self.itemsForChair		= [appDelegate arrayMChair];
		self.itemsForChair2		= [appDelegate arrayMChair2];
	}
	return self;
}

- (void) loadView{
	[super loadView];
	self.showRightButton	= YES;
	self.strRightButton		= @"Next";
	
	WHMV* tmpcontentView		= [[[WHMV alloc]init]autorelease];
	tmpcontentView.controller	= self;
	tmpcontentView.itemRoom		= [itemsForRoom objectAtIndex:appDelegate.currentRoom];
	tmpcontentView.itemPlan		= [itemsForPlan objectAtIndex:appDelegate.currentPlan];
	if(appDelegate.currentPlan != 9){
		tmpcontentView.itemVolume		= [itemsForVolume objectAtIndex:appDelegate.currentVolume];
		tmpcontentView.itemVolumeItem	= [itemsForVolumeItem objectAtIndex:appDelegate.currentPlan];
	}
	tmpcontentView.itemCloth	= [itemsForCloth objectAtIndex:appDelegate.currentCloth];
	tmpcontentView.itemChair	= [itemsForChair objectAtIndex:appDelegate.currentChair];
	tmpcontentView.itemChair2	= [itemsForChair2 objectAtIndex:appDelegate.currentChair];
	[tmpcontentView makeReceipt];
	
	self.contentView	= tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) dealloc{
	safe_release(itemsForRoom);
	safe_release(itemsForPlan);
	safe_release(itemsForCloth);
	safe_release(itemsForChair);
	safe_release(itemsForChair2);
	safe_release(itemsForVolume);
	safe_release(itemsForVolumeItem);
	[super dealloc];
}


@end