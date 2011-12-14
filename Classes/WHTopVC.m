#import "WHTopVC.h"



@implementation WHTopVC


#pragma mark -
#pragma mark override

- (void) loadView{
	[super loadView];
	self.showBackButton		= NO;
	self.showRightButton	= NO;
	
	WHTopV* tmpcontentView		= [[[WHTopV alloc]init]autorelease];
	tmpcontentView.controller	= self;
	self.contentView			= tmpcontentView;
	[self.view addSubview:contentView];
}

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[appDelegate setZeroForTableSimulator];
	[appDelegate setZeroForBouquetSimulator];
	[appDelegate setZeroForBouquetSimulator2];
}


@end