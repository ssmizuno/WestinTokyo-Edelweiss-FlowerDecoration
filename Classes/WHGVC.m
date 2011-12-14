#import "WHGVC.h"


@implementation WHGVC


@synthesize itemsForRoom;
@synthesize itemsForPlan;
@synthesize itemsForCloth;
@synthesize itemsForChair;
@synthesize itemsForChair2;
@synthesize itemsForVolume;
@synthesize itemsForVolumeItem;
@synthesize itemsForAccessory;


- (id)init{
	if((self = [super init])){
		
		self.itemsForRoom		= [appDelegate arrayGRoom];
		self.itemsForPlan		= [appDelegate arrayGPlan];
		self.itemsForCloth		= [appDelegate arrayGCloth];
		self.itemsForChair		= [appDelegate arrayGChair];
		self.itemsForChair2		= [appDelegate arrayGChair2];
		self.itemsForVolume		= [appDelegate arrayGVolume];
		self.itemsForVolumeItem	= [appDelegate arrayGVolumeItem];
		self.itemsForAccessory	= [appDelegate arrayGCandle:appDelegate.currentPlan];
	}
	return self;
}

- (void) loadView{
	[super loadView];
	self.showRightButton	= YES;
	self.strRightButton		= @"Next";
	
	WHGV* tmpcontentView					= [[[WHGV alloc]init]autorelease];
	tmpcontentView.controller				= self;
	tmpcontentView.itemsForAccessory		= itemsForAccessory;
	tmpcontentView.checkItemsForAccessory	= appDelegate.checkItemsForAccessory;
	self.contentView	= tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self updateImage];
	isLoaded = YES;
}

- (void) dealloc{
	safe_release(itemsForRoom);
	safe_release(itemsForPlan);
	safe_release(itemsForCloth);
	safe_release(itemsForChair);
	safe_release(itemsForChair2);
	safe_release(itemsForVolume);
	safe_release(itemsForVolumeItem);
	safe_release(itemsForAccessory);
	[super dealloc];
}

#pragma mark -
#pragma mark customize

- (void) updateImage{
	
	WHGV* tmpcontentView	= (WHGV*)contentView;
	
	if(isLoaded == NO){
		tmpcontentView.itemRoom		= [itemsForRoom objectAtIndex:appDelegate.currentRoom];
		tmpcontentView.itemPlan		= [itemsForPlan objectAtIndex:appDelegate.currentPlan];
		tmpcontentView.itemCloth	= [itemsForCloth objectAtIndex:appDelegate.currentCloth];
		tmpcontentView.itemChair	= [itemsForChair objectAtIndex:appDelegate.currentChair];
		tmpcontentView.itemChair2	= [itemsForChair2 objectAtIndex:appDelegate.currentChair];
		tmpcontentView.itemVolume	= [itemsForVolumeItem objectAtIndex:appDelegate.currentPlan];
		tmpcontentView.arrAccessory = appDelegate.currentAccessories;
	}else {
		
		NSInteger tmpcurrentPlan	= [appDelegate.checkItemsForPlan indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentCloth	= [appDelegate.checkItemsForCloth indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentChair	= [appDelegate.checkItemsForChair indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentVolume	= [appDelegate.checkItemsForVolume indexOfObject:[NSNumber numberWithBool:YES]];
		
		if(tmpcurrentPlan != appDelegate.currentPlan){
			appDelegate.currentPlan		= tmpcurrentPlan;
			tmpcontentView.itemPlan		= [itemsForPlan objectAtIndex:appDelegate.currentPlan];
			appDelegate.currentVolume	= tmpcurrentVolume;
			tmpcontentView.itemVolume	= [itemsForVolumeItem objectAtIndex:appDelegate.currentPlan];
		}
		if(tmpcurrentCloth != appDelegate.currentCloth){
			appDelegate.currentCloth	= tmpcurrentCloth;
			tmpcontentView.itemCloth	= [itemsForCloth objectAtIndex:appDelegate.currentCloth];
		}
		if(tmpcurrentChair != appDelegate.currentChair){
			appDelegate.currentChair	= tmpcurrentChair;
			tmpcontentView.itemChair	= [itemsForChair objectAtIndex:appDelegate.currentChair];
			tmpcontentView.itemChair2	= [itemsForChair2 objectAtIndex:appDelegate.currentChair];
		}
		if(tmpcurrentVolume != appDelegate.currentVolume){
			appDelegate.currentVolume	= tmpcurrentVolume;
			tmpcontentView.itemVolume	= [itemsForVolumeItem objectAtIndex:appDelegate.currentPlan];
		}
		
		tmpcontentView.arrAccessory = appDelegate.currentAccessories;
	}
}

- (void) inversion:(UIView*)_sender index:(NSIndexPath*)_indexPath{
	NSInteger indexRow	= _indexPath.row;
	if(_sender.tag == 10){
		BOOL check = [[appDelegate.checkItemsForPlan objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForPlan:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 11){
		BOOL check = [[appDelegate.checkItemsForCloth objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForCloth:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 12){
		BOOL check = [[appDelegate.checkItemsForChair objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForChair:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 13){
		BOOL check = [[appDelegate.checkItemsForVolume objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForVolume:indexRow];
			[self updateImage];
		}
	}else {
		NSInteger tagIndex	= _sender.tag -100;
		NSInteger itemIndex	= _indexPath.row;
		
		[appDelegate.checkItemsForAccessory replaceObjectAtIndex:tagIndex withObject:[NSNumber numberWithBool:YES]];
		[appDelegate.currentAccessories replaceObjectAtIndex:tagIndex withObject:[itemsForAccessory objectAtIndex:itemIndex]];
		[self updateImage];
	}
}


@end