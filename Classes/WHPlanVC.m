#import "WHPlanVC.h"
#import "WHMVC.h"


@implementation WHPlanVC


@synthesize itemsForRoom;
@synthesize itemsForPlan;
@synthesize itemsForCloth;
@synthesize itemsForChair;
@synthesize itemsForVolume;
@synthesize itemsForVolumeItem;

#pragma mark -
#pragma mark override

- (id)init{
	if((self = [super init])){
		
		self.itemsForRoom		= [appDelegate arrayZRoom];
		self.itemsForPlan		= [appDelegate arrayZPlan];
		self.itemsForCloth		= [appDelegate arrayZCloth];
		self.itemsForChair		= [appDelegate arrayZChair];
		self.itemsForVolume		= [appDelegate arrayZVolume];
		self.itemsForVolumeItem	= [appDelegate arrayZVolumeItem];
	}
	return self;
}

- (void) loadView{
	[super loadView];
	self.showRightButton	= YES;
	self.strRightButton		= @"Next";
	
	WHPlanV* tmpcontentView				= [[[WHPlanV alloc]init]autorelease];
	tmpcontentView.controller			= self;
	tmpcontentView.itemsForPlan			= itemsForPlan;
	tmpcontentView.itemsForCloth		= itemsForCloth;
	tmpcontentView.itemsForChair		= itemsForChair;
	tmpcontentView.itemsForVolume		= itemsForVolume;
	tmpcontentView.checkItemsForPlan	= appDelegate.checkItemsForPlan;
	tmpcontentView.checkItemsForCloth	= appDelegate.checkItemsForCloth;
	tmpcontentView.checkItemsForChair	= appDelegate.checkItemsForChair;
	tmpcontentView.checkItemsForVolume	= appDelegate.checkItemsForVolume;
	self.contentView	= tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self updateImage];
	
	WHPlanV* tmpcontentView	= (WHPlanV*)contentView;
	tmpcontentView.itemsForVolume		= itemsForVolume;
	tmpcontentView.checkItemsForVolume	= appDelegate.checkItemsForVolume;
	[tmpcontentView reloadAllTable];
	
	isLoaded = YES;
}

- (void) dealloc{
	safe_release(itemsForRoom);
	safe_release(itemsForPlan);
	safe_release(itemsForCloth);
	safe_release(itemsForChair);
	safe_release(itemsForVolume);
	safe_release(itemsForVolumeItem);
	[super dealloc];
}

#pragma mark -
#pragma mark customize

- (void) changeChair:(BOOL)_isRedCloth{
	
	if(_isRedCloth == YES){
		if([[[itemsForChair objectAtIndex:0] name] isEqualToString:@""])	return;
		
		NSMutableArray* tmparray = [NSMutableArray arrayWithArray:[appDelegate arrayZChair]];
		[tmparray replaceObjectAtIndex:0 withObject:[WHItem makeItem:0 file:@"zch001.png" item:@"" price:@""]];
		self.itemsForChair	= tmparray;
		
	}else {
		if(![[[itemsForChair objectAtIndex:0] name] isEqualToString:@""])	return;
		
		NSMutableArray* tmparray = [NSMutableArray arrayWithArray:[appDelegate arrayZChair]];
		[tmparray replaceObjectAtIndex:0 withObject:[WHItem makeItem:0 file:@"zch001.png" item:@"グレースチェアー" price:@""]];
		self.itemsForChair	= tmparray;
	}
	WHPlanV* tmpcontentView	= (WHPlanV*)contentView;
	tmpcontentView.itemsForChair	= itemsForChair;
}

- (void) changeCloth:(BOOL)_isGraceChair{
	
	if(_isGraceChair == YES){
		if([[[itemsForCloth objectAtIndex:4] name] isEqualToString:@""])	return;
		
		NSMutableArray* tmparray = [NSMutableArray arrayWithArray:[appDelegate arrayZCloth]];
		[tmparray replaceObjectAtIndex:4 withObject:[WHItem makeItem:4 file:@"zt005.png" item:@"" price:@""]];
		self.itemsForCloth	= tmparray;
		
	}else {
		if(![[[itemsForCloth objectAtIndex:4] name] isEqualToString:@""])	return;
		
		NSMutableArray* tmparray = [NSMutableArray arrayWithArray:[appDelegate arrayZCloth]];
		[tmparray replaceObjectAtIndex:4 withObject:[WHItem makeItem:4 file:@"zt005.png" item:@"モアレ・ボルドー" price:@""]];
		self.itemsForCloth	= tmparray;
	}
	WHPlanV* tmpcontentView	= (WHPlanV*)contentView;
	tmpcontentView.itemsForCloth	= itemsForCloth;
}

- (void) changeVolume:(BOOL)_isNothing{
	
	if(_isNothing == YES){
		if([[[itemsForVolume objectAtIndex:0] name] isEqualToString:@""])	return;
		
		NSMutableArray* tmparray = [NSMutableArray array];
		[tmparray addObject:[WHItem makeItem:0 file:@"" item:@"" price:@""]];
		[tmparray addObject:[WHItem makeItem:1 file:@"" item:@"" price:@""]];
		[tmparray addObject:[WHItem makeItem:2 file:@"" item:@"" price:@""]];
		self.itemsForVolume	= tmparray;
		
	}else {
		if(![[[itemsForVolume objectAtIndex:0] name] isEqualToString:@""])	return;
		
		NSMutableArray* tmparray = [NSMutableArray arrayWithArray:[appDelegate arrayZVolume]];
		self.itemsForVolume	= tmparray;
	}
	WHPlanV* tmpcontentView	= (WHPlanV*)contentView;
	tmpcontentView.itemsForVolume	= itemsForVolume;
}

- (void) updateImage{
	
	WHPlanV* tmpcontentView	= (WHPlanV*)contentView;
	
	if(isLoaded == NO){
		tmpcontentView.itemRoom		= [itemsForRoom objectAtIndex:appDelegate.currentRoom];
		tmpcontentView.itemPlan		= [itemsForPlan objectAtIndex:appDelegate.currentPlan];
		tmpcontentView.itemCloth	= [itemsForCloth objectAtIndex:appDelegate.currentCloth];
		tmpcontentView.itemChair	= [itemsForChair objectAtIndex:appDelegate.currentChair];
		tmpcontentView.itemVolume	= [itemsForVolumeItem objectAtIndex:appDelegate.currentPlan];
	}else {
		NSInteger tmpcurrentPlan	= [appDelegate.checkItemsForPlan indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentCloth	= [appDelegate.checkItemsForCloth indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentChair	= [appDelegate.checkItemsForChair indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentVolume	= [appDelegate.checkItemsForVolume indexOfObject:[NSNumber numberWithBool:YES]];
		
		if(tmpcurrentPlan != appDelegate.currentPlan){
			appDelegate.currentPlan		= tmpcurrentPlan;
			tmpcontentView.itemPlan		= [itemsForPlan objectAtIndex:appDelegate.currentPlan];
			appDelegate.currentVolume	= tmpcurrentVolume;
			self.itemsForVolumeItem		= [appDelegate arrayZVolumeItem];
			tmpcontentView.itemVolume	= [itemsForVolumeItem objectAtIndex:appDelegate.currentPlan];
			
			self.itemsForVolume	= [appDelegate arrayZVolume];
			tmpcontentView.itemsForVolume	= itemsForVolume;
		}
		if(tmpcurrentCloth != appDelegate.currentCloth){
			appDelegate.currentCloth	= tmpcurrentCloth;
			tmpcontentView.itemCloth	= [itemsForCloth objectAtIndex:appDelegate.currentCloth];
		}
		if(tmpcurrentChair != appDelegate.currentChair){
			appDelegate.currentChair	= tmpcurrentChair;
			tmpcontentView.itemChair	= [itemsForChair objectAtIndex:appDelegate.currentChair];
		}
		if(tmpcurrentVolume != appDelegate.currentVolume){
			appDelegate.currentVolume	= tmpcurrentVolume;
			self.itemsForVolumeItem		= [appDelegate arrayZVolumeItem];
			tmpcontentView.itemVolume	= [itemsForVolumeItem objectAtIndex:appDelegate.currentPlan];
		}
	}
}

#pragma mark -
#pragma mark WHTableVDelegate

- (void) inversion:(UIView*)_sender index:(NSIndexPath*)_indexPath{
	NSInteger indexRow	= _indexPath.row;
	if(_sender.tag == 10){
		BOOL check = [[appDelegate.checkItemsForPlan objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForPlan:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 11){
		BOOL check = [[appDelegate.checkItemsForVolume objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForVolume:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 12){
		BOOL check = [[appDelegate.checkItemsForCloth objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForCloth:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 13){
		BOOL check = [[appDelegate.checkItemsForChair objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForChair:indexRow];
			[self updateImage];
		}
	}
}


@end