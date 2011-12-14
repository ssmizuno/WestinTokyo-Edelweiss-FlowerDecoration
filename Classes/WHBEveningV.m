#import "WHBEveningV.h"
#import "WHBEveningVC.h"
#import "WHMVC.h"

static	NSString	*ImageName_Bg		= @"bg_bouquetsimulator.png";
static	NSString	*ImageName_TabOff	= @"btn_tab_off.png";
static	NSString	*ImageName_TabOn		= nil;

static	NSString	*StrTabTitle0	= @"Evening";
static	NSString	*StrTabTitle1	= @"Bouquet";
static	NSString	*StrExTax		= @"ブーケの表示価格はすべて税別価格です。";



@interface WHBEveningV (private)
- (BOOL) existMVC;
- (CGPoint) getPoint:(NSInteger)_bouquetNumber;
- (void) switchingTab:(NSInteger)_tabIndex;
- (void) switchingTable:(NSInteger)_tabIndex;
@end



@implementation WHBEveningV


@synthesize currentTabIndex;
@synthesize itemsForDress;
@synthesize itemsForBouquet;
@synthesize checkItemsForDress;
@synthesize checkItemsForBouquet;

@synthesize itemDress;
@synthesize itemBouquet;


- (id)init{
	if((self = [super init])){
		currentTabIndex = -1;
		self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:ImageName_Bg]];
		
		UIGradationView* bg = [[[UIGradationView alloc]initWithFrame:CGRectMake(25,11,450,657)]autorelease];
		CGFloat components[8] = {
			0.268, 0.243, 0.156, 0.999,
			0.933, 0.885, 0.803, 1.0
		};
		NSMutableArray* array = [NSMutableArray array];
		for(int i=0;i<8;i++)		[array addObject:[NSNumber numberWithFloat:components[i]]];
		bg.components	= array;
		bg.startPoint	= CGPointZero;
		bg.endPoint		= CGPointMake(bg.frame.size.width,bg.frame.size.height);
		[self addSubview:bg];
		
		tabButton0 = [UIButton Tabpoint:CGPointMake(250-112,30) title:StrTabTitle0 imageName:ImageName_TabOff delegate:self tag:0 jp:NO];//186
		tabButton1 = [UIButton Tabpoint:CGPointMake(250+112,30) title:StrTabTitle1 imageName:ImageName_TabOff delegate:self tag:1 jp:NO];
		[self addSubview:tabButton0];
		[self addSubview:tabButton1];
		
		CGRect frameTable = CGRectMake(28,50,445,618);
		tableViewforDress	= [[WHTableFrameV alloc]initWithFrame:frameTable];
		tableViewforBouquet	= [[WHBouquetFrameV alloc]initWithFrame:frameTable];
		tableViewforDress.tag	= 10;
		tableViewforBouquet.tag	= 11;
		[self addSubview:tableViewforDress];
		[self addSubview:tableViewforBouquet];
		
		dressView = [[WHDressView alloc]initWithFrame:CGRectMake(0,0,512,648)];
		dressView.center	= CGPointMake(768-12,self.frame.size.height/2);
		[self addSubview:dressView];
		
		self.currentTabIndex = 0;
        
        //----------11.07.15追加分----------//
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(510, 10, 200, 40)];
        label.text = @"Evening";
        label.textColor = [UIColor colorWithRed:0.98 green:0.89 blue:0.81 alpha:1.0];
        label.textAlignment = UITextAlignmentLeft;
        label.font = [UIFont fontWithName:@"Georgia-Italic" size:22];
        label.backgroundColor = [UIColor clearColor];
        [self addSubview:label];
        [label release];
        //----------　----------//
		
		UILabel* exTaxLabel = [[UILabel frame:CGRectMake(0,0,220,42) text:StrExTax color:[UIColor whiteColor] font:[UIFont appFontJP:11]]autorelease];
		exTaxLabel.center	= CGPointMake(900, 648);
		[self addSubview:exTaxLabel];
	}
	return self;
}

- (void) dealloc{
	safe_release(tableViewforDress);
	safe_release(tableViewforBouquet);
	safe_release(dressView);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setController:(id)_controller{
	[super setController:_controller];
	
	tableViewforDress.controller	= _controller;
	tableViewforBouquet.controller	= _controller;
	dressView.controller			= _controller;
}

- (void) setCurrentTabIndex:(NSInteger)_currentIndex{
	if(currentTabIndex == _currentIndex) return;
	currentTabIndex = _currentIndex;
	
	[self switchingTab:currentTabIndex];
	[self switchingTable:currentTabIndex];
}

- (void) setItemsForDress:(NSArray *)_items{	tableViewforDress.items		= _items;}
- (void) setItemsForBouquet:(NSArray *)_items{	tableViewforBouquet.items	= _items;}

- (void) setCheckItemsForDress:(NSArray *)_checkItems{		tableViewforDress.checkItems	= _checkItems;}
- (void) setCheckItemsForBouquet:(NSArray *)_checkItems{	tableViewforBouquet.checkItems	= _checkItems;}

- (void) setItemDress:(WHItem*)_item{		dressView.itemDress		= _item;}
- (void) setItemBouquet:(WHItem*)_item{		dressView.itemBouquet	= _item;}

#pragma mark -
#pragma mark customize

- (void) tabAction:(UIButton*)sender{
	self.currentTabIndex = sender.tag;
}

- (void) buttonAction:(UIButton*)sender{
	if(sender.tag == TagRightButton){
		[self.controller moveTo:WHMenuBouquetConfirm option:nil];
	}
}

- (void) switchingTab:(NSInteger)_tabIndex{
	
	[tabButton0 setBackgroundImage:[UIImage imageNamed:(_tabIndex == 0)? ImageName_TabOn : ImageName_TabOff] forState:UIControlStateNormal];
	[tabButton1 setBackgroundImage:[UIImage imageNamed:(_tabIndex == 1)? ImageName_TabOn : ImageName_TabOff] forState:UIControlStateNormal];
	[tabButton0 setTitleColor:(_tabIndex == 0)? [UIColor whiteColor] : [UIColor colorWithWhite:1.0f alpha:0.3f] forState:UIControlStateNormal];
	[tabButton1 setTitleColor:(_tabIndex == 1)? [UIColor whiteColor] : [UIColor colorWithWhite:1.0f alpha:0.3f] forState:UIControlStateNormal];
}

- (void) switchingTable:(NSInteger)_tabIndex{
	tableViewforDress.alpha		= (_tabIndex == 0)? 1.0f : 0.0f;
	tableViewforBouquet.alpha	= (_tabIndex == 1)? 1.0f : 0.0f;
}



@end