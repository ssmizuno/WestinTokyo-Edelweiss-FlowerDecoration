#import "WHPreviewVC.h"
#import "WHBWeddingVC.h"
#import "WHBEveningVC.h"


@implementation WHPreviewVC


@synthesize inputID;
@synthesize isInput;
@synthesize existBouquet;
@synthesize existEvening;

@synthesize itemsForRoom;
@synthesize itemsForPlan;
@synthesize itemsForCloth;
@synthesize itemsForChair;
@synthesize itemsForChair2;
@synthesize itemsForVolume;
@synthesize itemsForVolumeItem;
@synthesize itemsForDress;
@synthesize itemsForBouquet;

@synthesize currentAccessory;

#pragma mark -
#pragma mark override

- (id) init{
	if ((self = [super init])){
		
		currentRoom				= appDelegate.currentRoom;
		currentPlan				= appDelegate.currentPlan;
		currentCloth			= appDelegate.currentCloth;
		currentChair			= appDelegate.currentChair;
		currentVolume			= appDelegate.currentVolume;
		currentDressW			= appDelegate.currentDress;
		currentBouquetW			= appDelegate.currentBouquet;
		currentDressE			= appDelegate.currentDress2;
		currentBouquetE			= appDelegate.currentBouquet2;
		self.currentAccessory	= appDelegate.currentAccessories;
		
	}
	return self;
}

- (void) loadView{
	[super loadView];
	self.showRightButton	= NO;
	
	isInput				= (inputID)? YES : NO;
	existBouquet		= [self.navigationController isIncludeClass:[WHBWeddingVC class]];
	existEvening		= [self.navigationController isIncludeClass:[WHBEveningVC class]];
	
	NSString* textID	= [self makeID:inputID];
	
	if(isInput == YES){
		[self trimID:inputID];
	}
	
	self.itemsForRoom		= [appDelegate arrayMRoom];
	self.itemsForPlan		= [appDelegate arrayMPlan];
	self.itemsForVolume		= [appDelegate arrayMVolume:currentPlan];
	self.itemsForVolumeItem	= [appDelegate arrayMVolumeItem:currentVolume];
	self.itemsForCloth		= [appDelegate arrayMCloth];
	self.itemsForChair		= [appDelegate arrayMChair:currentRoom];
	self.itemsForChair2		= [appDelegate arrayMChair2:currentRoom];
	self.itemsForDress		= [appDelegate arrayDress];
	self.itemsForBouquet	= [appDelegate arrayBouquet];
	
	WHPreviewV* tmpcontentView	= [[[WHPreviewV alloc]init]autorelease];
	tmpcontentView.controller	= self;
	tmpcontentView.textID		= textID;
	self.contentView = tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self updateImage];
}

- (void)dealloc {
	safe_release(inputID);
	safe_release(itemsForRoom);
	safe_release(itemsForPlan);
	safe_release(itemsForCloth);
	safe_release(itemsForChair);
	safe_release(itemsForChair2);
	safe_release(itemsForVolume);
	safe_release(itemsForVolumeItem);
	safe_release(itemsForDress);
	safe_release(itemsForBouquet);
	safe_release(currentAccessory);
    [super dealloc];
}

#pragma mark -
#pragma mark customize

- (void) updateImage{
	WHPreviewV* tmpcontentView	= (WHPreviewV*)contentView;
	tmpcontentView.itemRoom			= [itemsForRoom objectAtIndex:currentRoom];
	tmpcontentView.itemPlan			= [itemsForPlan objectAtIndex:currentPlan];
	if(currentPlan != 9){
		tmpcontentView.itemVolume		= [itemsForVolume objectAtIndex:currentVolume];
		tmpcontentView.itemVolumeItem	= [itemsForVolumeItem objectAtIndex:currentPlan];
	}
	tmpcontentView.itemCloth		= [itemsForCloth objectAtIndex:currentCloth];
	tmpcontentView.itemChair		= [itemsForChair objectAtIndex:currentChair];
	tmpcontentView.itemChair2		= [itemsForChair2 objectAtIndex:currentChair];
	tmpcontentView.arrayAccessory	= currentAccessory;
	tmpcontentView.itemDress		= [itemsForDress objectAtIndex:currentDressW];
	tmpcontentView.itemBouquet		= [itemsForBouquet objectAtIndex:currentBouquetW];
	tmpcontentView.itemDress2		= [itemsForDress objectAtIndex:currentDressE];
	tmpcontentView.itemBouquet2		= [itemsForBouquet objectAtIndex:currentBouquetE];
	[tmpcontentView makeReceipt];
	
}

@end