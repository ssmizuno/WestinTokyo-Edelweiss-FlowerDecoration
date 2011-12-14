#import "WHBEveningVC.h"


@implementation WHBEveningVC


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
	self.strRightButton		= @"Enter";
	
	WHBEveningV* tmpcontentView			= [[[WHBEveningV alloc]init]autorelease];
	tmpcontentView.controller			= self;
	tmpcontentView.itemsForDress		= itemsForDress;
	tmpcontentView.itemsForBouquet		= itemsForBouquet;
	tmpcontentView.checkItemsForDress	= appDelegate.checkItemsForDress2;
	tmpcontentView.checkItemsForBouquet	= appDelegate.checkItemsForBouquet2;
	self.contentView	= tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self updateImage];
	isLoaded = YES;
}

- (void) dealloc{
	safe_release(itemsForDress);
	safe_release(itemsForBouquet);
	[super dealloc];
}

#pragma mark -
#pragma mark customize

- (void) updateImage{
	
	WHBEveningV* tmpcontentView	= (WHBEveningV*)contentView;
	
	if(isLoaded == NO){
		tmpcontentView.itemDress		= [itemsForDress objectAtIndex:appDelegate.currentDress2];
		tmpcontentView.itemBouquet		= [itemsForBouquet objectAtIndex:appDelegate.currentBouquet2];
	}else {
		NSInteger tmpcurrentDress	= [appDelegate.checkItemsForDress2 indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentBouquet	= [appDelegate.checkItemsForBouquet2 indexOfObject:[NSNumber numberWithBool:YES]];
		
		if(tmpcurrentDress != appDelegate.currentDress2){
			appDelegate.currentDress2	= tmpcurrentDress;
			tmpcontentView.itemDress	= [itemsForDress objectAtIndex:appDelegate.currentDress2];
		}
		if(tmpcurrentBouquet != appDelegate.currentBouquet2){
			appDelegate.currentBouquet2		= tmpcurrentBouquet;
			tmpcontentView.itemBouquet		= [itemsForBouquet objectAtIndex:appDelegate.currentBouquet2];
		}
	}
}

- (void) inversion:(UIView*)_sender index:(NSIndexPath*)_indexPath{
	NSInteger indexRow	= _indexPath.row;
	if(_sender.tag == 10){
		BOOL check = [[appDelegate.checkItemsForDress2 objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForDress2:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 11){
		BOOL check = [[appDelegate.checkItemsForBouquet2 objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForBouquet2:indexRow];
			[self updateImage];
		}
	}
}


@end