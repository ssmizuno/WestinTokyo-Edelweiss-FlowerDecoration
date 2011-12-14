#import "WHRoomV.h"

static	NSString	*ImageName_Bg			= @"room_base.png";
static	NSString	*ImageName_BtnA_on		= @"btn_galaxya_on.png";
static	NSString	*ImageName_BtnA_off		= @"btn_galaxya_off.png";
static	NSString	*ImageName_BtnB_on		= @"btn_galaxyd_on.png";
static	NSString	*ImageName_BtnB_off		= @"btn_galaxyd_off.png";

static	NSString	*StrButtonTitle0	= @"楓";
static	NSString	*StrButtonTitle1	= @"桜";
static	NSString	*StrButtonTitle4	= @"スター";


@implementation WHRoomV


@synthesize itemsForRoom;

#pragma mark -
#pragma mark override

- (id)init{
	if((self = [super init])){
		
		for(int i=0;i<4;i++){
			NSString* imageName	= [NSString stringWithFormat:@"room_%02d.png",i];
			CGFloat x = (i%2==0)?	512-250 : 512+250;
			CGFloat y = (i/2==0)?	334-166 : 334+166;
			UIImageView* imageView	= [UIImageView point:CGPointMake(x,y-30) imageName:imageName];
			UIImageView* imageViewB	= [UIImageView point:CGPointMake(x,y) imageName:ImageName_Bg];
			[self addSubview:imageView];
			[self addSubview:imageViewB];
		}
		
		UIButton* button0 = [UIGradationButton frame:CGRectMake(300,282,160,42) title:StrButtonTitle0 delegate:self tag:0 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
		UIButton* button1 = [UIGradationButton frame:CGRectMake(800,282,160,42) title:StrButtonTitle1 delegate:self tag:1 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
		UIButton* button2 = [UIButton point:CGPointMake(202,636) imageName:ImageName_BtnA_off delegate:self tag:2];
		UIButton* button3 = [UIButton point:CGPointMake(384,636) imageName:ImageName_BtnB_off delegate:self tag:3];
		UIButton* button4 = [UIGradationButton frame:CGRectMake(800,614,160,42) title:StrButtonTitle4 delegate:self tag:4 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
		[button2 setBackgroundImage:[UIImage imageNamed:ImageName_BtnA_on] forState:UIControlStateHighlighted];
		[button3 setBackgroundImage:[UIImage imageNamed:ImageName_BtnB_on] forState:UIControlStateHighlighted];
		
		[self addSubview:button0];
		[self addSubview:button1];
		[self addSubview:button2];
		[self addSubview:button3];
		[self addSubview:button4];
	}
	return self;
}

- (void) dealloc{
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setItemsForRoom:(NSArray *)_items{
	
	int i=0;
	for(WHItem* item in _items){
		CGFloat x = (i%2==0)?	512-250 : 512+250;
		CGFloat y = (i/2==0)?	334-166 : 334+166;
		UIImageView* imageView	= [UIImageView point:CGPointMake(x,y-30) imageName:item.file];
		UIImageView* imageViewB	= [UIImageView point:CGPointMake(x,y) imageName:ImageName_Bg];
		[self addSubview:imageView];
		[self addSubview:imageViewB];
		i++;
	}
	
	UIButton* button0 = [UIGradationButton frame:CGRectMake(300,282,160,42) title:StrButtonTitle0 delegate:self tag:0 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
	UIButton* button1 = [UIGradationButton frame:CGRectMake(800,282,160,42) title:StrButtonTitle1 delegate:self tag:1 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
	UIButton* button2 = [UIButton point:CGPointMake(202,636) imageName:ImageName_BtnA_off delegate:self tag:2];
	UIButton* button3 = [UIButton point:CGPointMake(384,636) imageName:ImageName_BtnB_off delegate:self tag:3];
	UIButton* button4 = [UIGradationButton frame:CGRectMake(800,614,160,42) title:StrButtonTitle4 delegate:self tag:4 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
	[button2 setBackgroundImage:[UIImage imageNamed:ImageName_BtnA_on] forState:UIControlStateHighlighted];
	[button3 setBackgroundImage:[UIImage imageNamed:ImageName_BtnB_on] forState:UIControlStateHighlighted];
	
	[self addSubview:button0];
	[self addSubview:button1];
	[self addSubview:button2];
	[self addSubview:button3];
	[self addSubview:button4];
}

#pragma mark -
#pragma mark buttonAction

- (void) buttonAction:(UIButton*)sender{
	self.appDelegate.currentRoom = sender.tag;
	if(self.appDelegate.currentRoom == 0){
		self.appDelegate.currentChair = 1;
		[self.appDelegate replacementCheckForChair:self.appDelegate.currentChair];
	}else if(self.appDelegate.currentRoom == 4){
		self.appDelegate.currentChair = 1;
		[self.appDelegate replacementCheckForChair:self.appDelegate.currentChair];
	}
	[self.controller moveTo:WHMenuPlan option:nil];
}


@end