#import "WHBWeddingVC.h"
#import "WHMVC.h"


@implementation WHBWeddingVC


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
	self.showEveningButton	= YES;
    
	WHBWeddingV* tmpcontentView			= [[[WHBWeddingV alloc]init]autorelease];
	tmpcontentView.controller			= self;
	tmpcontentView.itemsForDress		= itemsForDress;
	tmpcontentView.itemsForBouquet		= itemsForBouquet;
	tmpcontentView.checkItemsForDress	= appDelegate.checkItemsForDress;
	tmpcontentView.checkItemsForBouquet	= appDelegate.checkItemsForBouquet;
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
	
	WHBWeddingV* tmpcontentView	= (WHBWeddingV*)contentView;
	
	if(isLoaded == NO){
		tmpcontentView.itemDress		= [itemsForDress objectAtIndex:appDelegate.currentDress];
		tmpcontentView.itemBouquet		= [itemsForBouquet objectAtIndex:appDelegate.currentBouquet];
		
	}else {
		NSInteger tmpcurrentDress	= [appDelegate.checkItemsForDress indexOfObject:[NSNumber numberWithBool:YES]];
		NSInteger tmpcurrentBouquet	= [appDelegate.checkItemsForBouquet indexOfObject:[NSNumber numberWithBool:YES]];
		
		if(tmpcurrentDress != appDelegate.currentDress){
			appDelegate.currentDress	= tmpcurrentDress;
			tmpcontentView.itemDress	= [itemsForDress objectAtIndex:appDelegate.currentDress];
		}
		if(tmpcurrentBouquet != appDelegate.currentBouquet){
			appDelegate.currentBouquet		= tmpcurrentBouquet;
			tmpcontentView.itemBouquet		= [itemsForBouquet objectAtIndex:appDelegate.currentBouquet];
		}
	}
    
}

- (void) inversion:(UIView*)_sender index:(NSIndexPath*)_indexPath{
	NSInteger indexRow	= _indexPath.row;
	if(_sender.tag == 10){
		BOOL check = [[appDelegate.checkItemsForDress objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForDress:indexRow];
			[self updateImage];
		}
	}else if(_sender.tag == 11){
		BOOL check = [[appDelegate.checkItemsForBouquet objectAtIndex:indexRow]boolValue];
		if(!check){
			[appDelegate replacementCheckForBouquet:indexRow];
			[self updateImage];
		}
	}
}



@end