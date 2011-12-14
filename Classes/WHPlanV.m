#import "WHPlanV.h"
#import "WHPlanVC.h"


static	NSString	*ImageName_TabOff	= @"btn_tab_off2.png";
static	NSString	*ImageName_TabOn	= nil;

//static	NSString	*StrButtonTitle0	= @"会 場 選 択 画 面 へ";
//static	NSString	*StrButtonTitle1	= @"確 認 画 面 へ";
static	NSString	*StrTabTitle0		= @"Flower's";
static	NSString	*StrTabTitle1		= @"Style";
static	NSString	*StrTabTitle2		= @"テーブルクロス";
static	NSString	*StrTabTitle3		= @"椅子";
static	NSString	*Str0				= @"会場全体の雰囲気をご覧ください";
static	NSString	*Str1				= @"プラン・花・クロス・椅子のボリューム";
static	NSString	*Str2				= @"それぞれ変更が可能です";
static	NSString	*StrExTax			= @"表示価格はすべて税別価格です。";

static NSString     *ImageName_BtnG_off = @"btn_Confirm_off.png";
static NSString     *ImageName_BtnR_off = @"btn_Room_off.png";

static NSString     *ImageName_BtnG_on  = @"btn_Confirm_on.png";
static NSString     *ImageName_BtnR_on  = @"btn_Room_on.png";


@interface WHPlanV (private)
- (void) switchingTab:(NSInteger)_index;
- (void) switchingTable:(NSInteger)_tabIndex;
@end


@implementation WHPlanV


@synthesize currentTabIndex;
@synthesize itemsForPlan;
@synthesize itemsForCloth;
@synthesize itemsForChair;
@synthesize itemsForVolume;
@synthesize checkItemsForPlan;
@synthesize checkItemsForCloth;
@synthesize checkItemsForChair;
@synthesize checkItemsForVolume;

@synthesize itemRoom;
@synthesize itemPlan;
@synthesize itemCloth;
@synthesize itemChair;
@synthesize itemVolume;


- (id)init{
	if((self = [super init])){
		currentTabIndex = -1;
		
		
		UIImageView* tmp = [[UIImageView frame:CGRectMake(30,390,578,278) imageName:ImageName_TabOff]autorelease];
		[self addSubview:tmp];
		
		tabButton0 = [UIButton Tabpoint:CGPointMake(319-(144/2+145*1+1),414) title:StrTabTitle0 imageName:ImageName_TabOff delegate:self tag:0 jp:NO];//186
		tabButton1 = [UIButton Tabpoint:CGPointMake(319-(144/2+145*0+1),414) title:StrTabTitle1 imageName:ImageName_TabOff delegate:self tag:1 jp:NO];
		tabButton2 = [UIButton Tabpoint:CGPointMake(319+(144/2+145*0),  414) title:StrTabTitle2 imageName:ImageName_TabOff delegate:self tag:2 jp:YES];
		tabButton3 = [UIButton Tabpoint:CGPointMake(319+(144/2+145*1),	414) title:StrTabTitle3 imageName:ImageName_TabOff delegate:self tag:3 jp:YES];
		
		[self addSubview:tabButton0];
		[self addSubview:tabButton1];
		[self addSubview:tabButton2];
		[self addSubview:tabButton3];
		
		CGRect frameTable = CGRectMake(32,440,574,228);
		tableViewforPlan	= [[WHTableV alloc]initWithFrame:frameTable];
		tableViewforVolume	= [[WHTableV alloc]initWithFrame:frameTable];
		tableViewforCloth	= [[WHTableV alloc]initWithFrame:frameTable];
		tableViewforChair	= [[WHTableV alloc]initWithFrame:frameTable];
		
		tableViewforPlan.tag	= 10;
		tableViewforVolume.tag	= 11;
		tableViewforCloth.tag	= 12;
		tableViewforChair.tag	= 13;
		
		[self addSubview:tableViewforPlan];
		[self addSubview:tableViewforVolume];
		[self addSubview:tableViewforCloth];
		[self addSubview:tableViewforChair];
		
		self.currentTabIndex = 0;
		
		
		CGRect frameImage = CGRectMake(30,10,964,364);
		imageRoom	= [UIImageView frame:frameImage imageName:nil];
		imagePlan	= [UIImageView frame:frameImage imageName:nil];
		imageVolume	= [UIImageView frame:frameImage imageName:nil];
		imageCloth	= [UIImageView frame:frameImage imageName:nil];
		imageChair	= [UIImageView frame:frameImage imageName:nil];
		
		[self addSubview:imageRoom];
		[self addSubview:imageCloth];
		[self addSubview:imagePlan];
		[self addSubview:imageChair];
		[self addSubview:imageVolume];
		
		UIGradationView* tmpView = [[[UIGradationView alloc]initWithFrame:CGRectMake(0,0,278,142)]autorelease];
		tmpView.center = CGPointMake(856,460);
		CGFloat components[8] = {
			0.267, 0.244, 0.199, 0.999,
			0.266, 0.227, 0.154, 1.000
		};
		NSMutableArray* array = [NSMutableArray array];
		for(int i=0;i<8;i++)		[array addObject:[NSNumber numberWithFloat:components[i]]];
		tmpView.components	= array;
		tmpView.startPoint	= CGPointZero;
		tmpView.endPoint	= CGPointMake(tmpView.frame.size.width,tmpView.frame.size.height);
		[self addSubview:tmpView];
		
		
		UILabel* label0	= [[UILabel frame:CGRectMake(0,0,278,48) text:Str0 color:[UIColor whiteColor] font:[UIFont appFontJP:14]]autorelease];
		UILabel* label1	= [[UILabel frame:CGRectMake(0,0,278,48) text:Str1 color:[UIColor whiteColor] font:[UIFont appFontJP:12]]autorelease];
		UILabel* label2	= [[UILabel frame:CGRectMake(0,0,278,48) text:Str2 color:[UIColor whiteColor] font:[UIFont appFontJP:12]]autorelease];
		label0.center	= CGPointMake(856,420);
		label1.center	= CGPointMake(856,458);
		label2.center	= CGPointMake(856,488);
		
		[self addSubview:label0];
		[self addSubview:label1];
		[self addSubview:label2];
		
		
		/*UIButton* button0 = [UIGradationButton frame:CGRectMake(0,0,278,48) title:StrButtonTitle0 delegate:self tag:0 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
         UIButton* button1 = [UIGradationButton frame:CGRectMake(0,0,278,48) title:StrButtonTitle1 delegate:self tag:1 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];*/
        UIButton* button0	= [UIButton point:CGPointZero imageName:ImageName_BtnR_off delegate:self tag:0];
		UIButton* button1	= [UIButton point:CGPointZero imageName:ImageName_BtnG_off delegate:self tag:1];
        [button0 setBackgroundImage:[UIImage imageNamed:ImageName_BtnR_on] forState:UIControlStateHighlighted];
		[button1 setBackgroundImage:[UIImage imageNamed:ImageName_BtnG_on] forState:UIControlStateHighlighted];
		button0.center = CGPointMake(856,602-30);
		button1.center = CGPointMake(856,602+30);
		
		[self addSubview:button0];
		[self addSubview:button1];
		
		UILabel* exTaxLabel = [[UILabel frame:CGRectMake(0,0,220,42) text:StrExTax color:[UIColor whiteColor] font:[UIFont appFontJP:11]]autorelease];
		exTaxLabel.center	= CGPointMake(900, 520);
		[self addSubview:exTaxLabel];
	}
	return self;
}

- (void) dealloc{
	safe_release(tableViewforPlan);
	safe_release(tableViewforCloth);
	safe_release(tableViewforChair);
	safe_release(tableViewforVolume);
	safe_release(imageRoom);
	safe_release(imagePlan);
	safe_release(imageCloth);
	safe_release(imageChair);
	safe_release(imageVolume);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setController:(id)_controller{
	[super setController:_controller];
	
	tableViewforPlan.controller		= _controller;
	tableViewforVolume.controller	= _controller;
	tableViewforCloth.controller	= _controller;
	tableViewforChair.controller	= _controller;
}

- (void) setCurrentTabIndex:(NSInteger)_currentIndex{
	if(currentTabIndex == _currentIndex) return;
	currentTabIndex = _currentIndex;
	
	WHPlanVC* tmpcontroller = (WHPlanVC*)self.controller;
	
	if(currentTabIndex == 1){
		NSInteger tmpcurrentPlan	= [self.appDelegate.checkItemsForPlan indexOfObject:[NSNumber numberWithBool:YES]];
		if(tmpcurrentPlan == 9){	//if u select no plan
			[tmpcontroller changeVolume:YES];
		}else {
			[tmpcontroller changeVolume:NO];
		}
	}else if(currentTabIndex == 2){
		NSInteger tmpcurrentChair	= [self.appDelegate.checkItemsForChair indexOfObject:[NSNumber numberWithBool:YES]];
		if(tmpcurrentChair == 0){	//if u select gracechair
			[tmpcontroller changeCloth:YES];
		}else {
			[tmpcontroller changeCloth:NO];
		}
	}else if(currentTabIndex == 3){
		NSInteger tmpcurrentCloth	= [self.appDelegate.checkItemsForCloth indexOfObject:[NSNumber numberWithBool:YES]];
		if(tmpcurrentCloth == 4){	//if u select index 5
			[tmpcontroller changeChair:YES];
		}else {
			[tmpcontroller changeChair:NO];
		}
	}
	
	[self switchingTab:currentTabIndex];
	[self switchingTable:currentTabIndex];
}

- (void) setItemsForPlan:(NSArray *)_items{		tableViewforPlan.items	= _items;}
- (void) setItemsForVolume:(NSArray *)_items{	tableViewforVolume.items = _items;}
- (void) setItemsForCloth:(NSArray *)_items{	tableViewforCloth.items = _items;}
- (void) setItemsForChair:(NSArray *)_items{	tableViewforChair.items	= _items;}

- (void) setCheckItemsForPlan:(NSArray *)_checkItems{	tableViewforPlan.checkItems		= _checkItems;}
- (void) setCheckItemsForVolume:(NSArray *)_checkItems{	tableViewforVolume.checkItems	= _checkItems;}
- (void) setCheckItemsForCloth:(NSArray *)_checkItems{	tableViewforCloth.checkItems	= _checkItems;}
- (void) setCheckItemsForChair:(NSArray *)_checkItems{	tableViewforChair.checkItems	= _checkItems;}

- (void) setItemRoom:(WHItem *)_item{	imageRoom.image	= [UIImage imageNamed:_item.file];}
- (void) setItemPlan:(WHItem *)_item{	[self fadeInOut:imagePlan imageName:_item.file];}
- (void) setItemVolume:(WHItem *)_item{	[self fadeInOut:imageVolume imageName:_item.file];}
- (void) setItemCloth:(WHItem *)_item{	[self fadeInOut:imageCloth imageName:_item.file];}
- (void) setItemChair:(WHItem *)_item{	[self fadeInOut:imageChair imageName:_item.file];}

#pragma mark -
#pragma mark customize

- (void) reloadAllTable{
	[tableViewforPlan reloadData];
	[tableViewforVolume reloadData];
	[tableViewforCloth reloadData];
	[tableViewforChair reloadData];
}

- (void) buttonAction:(UIButton*)sender{
	if(sender.tag == TagRightButton){	//Next
		[self.controller moveTo:WHMenuM option:nil];
	}else if(sender.tag == 0){			//会場選択画面へ
		[self.controller navigationBack:nil];
	}else if(sender.tag == 1){			//確認画面へ
		[self.controller moveTo:WHMenuM option:nil];
	}
}

- (void) tabAction:(UIButton*)sender{
	self.currentTabIndex = sender.tag;
}

#pragma mark -
#pragma mark private

- (void) switchingTab:(NSInteger)_tabIndex{
	
	[tabButton0 setBackgroundImage:[UIImage imageNamed:(_tabIndex == 0)? ImageName_TabOn : ImageName_TabOff] forState:UIControlStateNormal];
	[tabButton1 setBackgroundImage:[UIImage imageNamed:(_tabIndex == 1)? ImageName_TabOn : ImageName_TabOff] forState:UIControlStateNormal];
	[tabButton2 setBackgroundImage:[UIImage imageNamed:(_tabIndex == 2)? ImageName_TabOn : ImageName_TabOff] forState:UIControlStateNormal];
	[tabButton3 setBackgroundImage:[UIImage imageNamed:(_tabIndex == 3)? ImageName_TabOn : ImageName_TabOff] forState:UIControlStateNormal];
	[tabButton0 setTitleColor:(_tabIndex == 0)? [UIColor whiteColor] : [UIColor colorWithWhite:1.0f alpha:0.3f] forState:UIControlStateNormal];
	[tabButton1 setTitleColor:(_tabIndex == 1)? [UIColor whiteColor] : [UIColor colorWithWhite:1.0f alpha:0.3f] forState:UIControlStateNormal];
	[tabButton2 setTitleColor:(_tabIndex == 2)? [UIColor whiteColor] : [UIColor colorWithWhite:1.0f alpha:0.3f] forState:UIControlStateNormal];
	[tabButton3 setTitleColor:(_tabIndex == 3)? [UIColor whiteColor] : [UIColor colorWithWhite:1.0f alpha:0.3f] forState:UIControlStateNormal];
}

- (void) switchingTable:(NSInteger)_tabIndex{
	tableViewforPlan.alpha		= (_tabIndex == 0)? 1.0f : 0.0f;
	tableViewforVolume.alpha	= (_tabIndex == 1)? 1.0f : 0.0f;
	tableViewforCloth.alpha		= (_tabIndex == 2)? 1.0f : 0.0f;
	tableViewforChair.alpha		= (_tabIndex == 3)? 1.0f : 0.0f;
}


@end