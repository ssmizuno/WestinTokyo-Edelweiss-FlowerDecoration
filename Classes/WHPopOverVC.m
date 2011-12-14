#import "WHPopOverVC.h"
#import "AppDelegate.h"

static CGFloat	width	= 300;


@interface WHPopOverVC (private)
- (CGFloat) height;
@end



@implementation WHPopOverVC


@synthesize tag;
@synthesize baseController;
@synthesize	itemsForAccessory;
@synthesize	checkItemsForAccessory;

- (id) init{
	if((self = [super init])){
	}
	return self;
}

- (void) loadView{
	[super loadView];
	
	scrollView = [[UIScrollView alloc]init];
	scrollView.frame			= CGRectMake(0,0,300,250);
	scrollView.indicatorStyle	= UIScrollViewIndicatorStyleWhite;
	scrollView.showsVerticalScrollIndicator	= YES;
	scrollView.bounces			= NO;
	[self.view addSubview:scrollView];
	
	tableView	= [[WHTableFrameV alloc]initWithFrame:CGRectMake(0,0,300,0)];
	tableView.tag			= self.tag;
	tableView.controller	= self.baseController;
	tableView.items			= itemsForAccessory;
	tableView.checkItems	= checkItemsForAccessory;
	tableView.scrollEnabled	= NO;
	[scrollView addSubview:tableView];
	
}

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[scrollView flashScrollIndicators];
}

- (void)dealloc {
	safe_release(scrollView);
	safe_release(tableView);
    [super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setItemsForAccessory:(NSArray *)_items{
	itemsForAccessory	= _items;
	tableView.items		= itemsForAccessory;
}

- (void) setCheckItemsForAccessory:(NSMutableArray *)_checkItems{
	checkItemsForAccessory	= _checkItems;
	tableView.checkItems	= checkItemsForAccessory;
}

#pragma mark -
#pragma mark customized

- (CGFloat) height{
	CGFloat eachHeight	= width/3*5/4;
	NSInteger row		= [itemsForAccessory count]/3;
	CGFloat tmpheight;
	if(row == 0){
		tmpheight	= eachHeight;
	}else {
		tmpheight = 2 * eachHeight;
	}
	return tmpheight;
}

- (CGFloat) scrollViewContentHeight{
	
	CGFloat eachHeight	= width/3*5/4;
	NSInteger row		= [itemsForAccessory count]/3;
	CGFloat tmpheight;
	if(row == 0){
		tmpheight	= eachHeight;
	}else {
		if([itemsForAccessory count]%3 == 0){
			tmpheight	= eachHeight * row;
		}else {
			tmpheight	= eachHeight * row + eachHeight;
		}
	}
	return tmpheight;
}

- (void) showInView:(UIView*)_inView frame:(CGRect)_frame{
	self.view.frame = CGRectMake(0,0,width, [self height]);
	tableView.frame = CGRectMake(0,0,width, [self scrollViewContentHeight]);
	scrollView.contentSize = tableView.frame.size;
	popover = [[UIPopoverController alloc]initWithContentViewController:self];
	popover.popoverContentSize = CGSizeMake(self.view.frame.size.width,self.view.frame.size.height);
	[popover presentPopoverFromRect:_frame inView:_inView permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}



@end