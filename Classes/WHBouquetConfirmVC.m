#import "WHBouquetConfirmVC.h"
#import "WHBEveningVC.h"

@implementation WHBouquetConfirmVC

@synthesize itemsForDress;
@synthesize itemsForBouquet;

- (id)init{
	if((self = [super init])){
		self.itemsForDress		= [appDelegate arrayDress];
		self.itemsForBouquet	= [appDelegate arrayBouquet];
	}
	return self;
}

- (void) loadView{
	[super loadView];
	self.showRightButton	= YES;
	self.strRightButton		= @"Next";
	
	BOOL existEvening = [self.navigationController isIncludeClass:[WHBEveningVC class]];
	
	WHBouquetConfirmV* tmpcontentView	= [[[WHBouquetConfirmV alloc]init]autorelease];
	tmpcontentView.existEvening			= existEvening;
	tmpcontentView.controller			= self;
	tmpcontentView.itemWDress			= [itemsForDress objectAtIndex:appDelegate.currentDress];
	tmpcontentView.itemWBouquet			= [itemsForBouquet objectAtIndex:appDelegate.currentBouquet];
	tmpcontentView.itemEDress			= [itemsForDress objectAtIndex:appDelegate.currentDress2];
	tmpcontentView.itemEBouquet			= [itemsForBouquet objectAtIndex:appDelegate.currentBouquet2];
	self.contentView	= tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) dealloc{
	safe_release(itemsForDress);
	safe_release(itemsForBouquet);
	[super dealloc];
}

@end