#import "WHMV.h"
#import "WHMVC.h"


static	NSString	*ImageName_BtnF_on		= @"btn_flowerc_on.png";
static	NSString	*ImageName_BtnF_off		= @"btn_flowerc_off.png";
static	NSString	*ImageName_BtnW_on		= @"btn_weddingb_on.png";
static	NSString	*ImageName_BtnW_off		= @"btn_weddingb_off.png";

static	NSString	*ImageName_BtnFinish_on		= @"btn_Finish_on.png";
static	NSString	*ImageName_BtnFinish_off	= @"btn_Finish_off.png";
static	NSString	*ImageName_BtnFD_on		= @"btn_FD_on.png";
static	NSString	*ImageName_BtnFD_off    = @"btn_FD_off.png";

static	NSString	*ImageName_BgReceipt	= @"btn_tab_off.png";

//static	NSString	*StrButtonTitle0		= @"最 終 確 認 画 面 へ";
//static	NSString	*StrButtonTitle1		= @"装 花 画 面 へ";

static	NSString	*StrTitle				= @"お客様　選択内容の表示";
static	NSString	*StrRoom				= @"会場";
static	NSString	*StrPlan				= @"Flower's";
static	NSString	*StrVolume				= @"Style";
static	NSString	*StrCloth				= @"テーブルクロス";
static	NSString	*StrChair				= @"椅子";
static	NSString	*StrColon				= @"：";
static	NSString	*StrExTax				= @"表示価格はすべて税別価格です。";



static	CGFloat toppadding	= 12.0f;
static	CGFloat itemHeight	= 28.0f;
static	CGFloat itemPadding	= 28.0+2.0f;



@interface WHMV (private)
- (NSDictionary*) title:(NSString*)_title
				   item:(WHItem*)_item
			  titleIsEN:(BOOL)_titleIsEN
			   itemIsEN:(BOOL)_itemIsEN
			  showTitle:(BOOL)_showTitle;
- (UILabel*) makeLabel:(CGRect)_frame text:(NSString*)_text font:(UIFont*)_font;
@end




@implementation WHMV

@synthesize itemRoom;
@synthesize itemPlan;
@synthesize itemCloth;
@synthesize itemChair;
@synthesize itemChair2;
@synthesize itemVolume;
@synthesize itemVolumeItem;


- (id)init{
	if((self = [super init])){
		
		CGRect frameImage = CGRectMake(30,10,964,424);
		
		imageRoom		= [UIImageView frame:frameImage imageName:nil];
		imagePlan		= [UIImageView frame:frameImage imageName:nil];
		imageCloth		= [UIImageView frame:frameImage imageName:nil];
		imageChair		= [UIImageView frame:frameImage imageName:nil];
		imageChair2		= [UIImageView frame:frameImage imageName:nil];
		imageVolume		= [UIImageView frame:frameImage imageName:nil];
		imageVolumeItem	= [UIImageView frame:frameImage imageName:nil];
		
		[self addSubview:imageRoom];
		[self addSubview:imageChair2];
		[self addSubview:imageCloth];
		[self addSubview:imagePlan];
		[self addSubview:imageChair];
		[self addSubview:imageVolume];
		[self addSubview:imageVolumeItem];
		
		/*UIButton* button0	= [UIGradationButton frame:CGRectMake(0,0,278,48) title:StrButtonTitle0 delegate:self tag:0 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
         UIButton* button1	= [UIGradationButton frame:CGRectMake(0,0,278,48) title:StrButtonTitle1 delegate:self tag:1 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];*/
        UIButton* button0	= [UIButton point:CGPointZero imageName:ImageName_BtnFinish_off delegate:self tag:0];
		UIButton* button1	= [UIButton point:CGPointZero imageName:ImageName_BtnFD_off delegate:self tag:1];
		UIButton* button2	= [UIButton point:CGPointZero imageName:ImageName_BtnF_off delegate:self tag:2];
		UIButton* button3	= [UIButton point:CGPointZero imageName:ImageName_BtnW_off delegate:self tag:3];
        [button0 setBackgroundImage:[UIImage imageNamed:ImageName_BtnFinish_on] forState:UIControlStateHighlighted];
		[button1 setBackgroundImage:[UIImage imageNamed:ImageName_BtnFD_on] forState:UIControlStateHighlighted];
		[button2 setBackgroundImage:[UIImage imageNamed:ImageName_BtnF_on] forState:UIControlStateHighlighted];
		[button3 setBackgroundImage:[UIImage imageNamed:ImageName_BtnW_on] forState:UIControlStateHighlighted];
		button0.center = CGPointMake(856,472+54*0);
		button1.center = CGPointMake(856,472+54*1);
		button2.center = CGPointMake(856,472+54*2);
		button3.center = CGPointMake(856,472+54*3);
		
		[self addSubview:button0];
		[self addSubview:button1];
		[self addSubview:button2];
		[self addSubview:button3];
		
		UIImageView* bgimageView		= [[UIImageView frame:CGRectMake(30,434,650,236) imageName:ImageName_BgReceipt]autorelease];
		bgimageView.contentMode			= UIViewContentModeScaleToFill;
		[self addSubview:bgimageView];
		
		scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(30,434,650,236)];
		scrollView.showsVerticalScrollIndicator		= NO;
		scrollView.showsHorizontalScrollIndicator	= NO;
		[self addSubview:scrollView];
		
		arrayReceipt = [[NSMutableArray alloc]init];
	}
	return self;
}

- (void) dealloc{
	safe_release(imageRoom);
	safe_release(imagePlan);
	safe_release(imageCloth);
	safe_release(imageChair);
	safe_release(imageChair2);
	safe_release(imageVolume);
	safe_release(imageVolumeItem);
	safe_release(scrollView);
	safe_release(arrayReceipt);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setItemRoom:(WHItem *)_item{
	[arrayReceipt addObject:[self title:StrRoom item:_item titleIsEN:NO itemIsEN:NO showTitle:YES]];
	imageRoom.image	= [UIImage imageNamed:_item.file];
}
- (void) setItemPlan:(WHItem *)_item{
	[arrayReceipt addObject:[self title:StrPlan item:_item titleIsEN:YES itemIsEN:NO showTitle:YES]];
	imagePlan.image	= [UIImage imageNamed:_item.file];
}
- (void) setItemVolume:(WHItem *)_item{
	[arrayReceipt addObject:[self title:StrVolume item:_item titleIsEN:YES itemIsEN:NO showTitle:YES]];
	imageVolume.image	= [UIImage imageNamed:_item.file];
}
- (void) setItemVolumeItem:(WHItem *)_item{
	imageVolumeItem.image	= [UIImage imageNamed:_item.file];
}
- (void) setItemCloth:(WHItem *)_item{
	[arrayReceipt addObject:[self title:StrCloth item:_item titleIsEN:NO itemIsEN:NO showTitle:YES]];
	imageCloth.image	= [UIImage imageNamed:_item.file];
}
- (void) setItemChair:(WHItem *)_item{
	[arrayReceipt addObject:[self title:StrChair item:_item titleIsEN:NO itemIsEN:NO showTitle:YES]];
	imageChair.image	= [UIImage imageNamed:_item.file];
}
- (void) setItemChair2:(WHItem *)_item{
	[self fadeInOut:imageChair2 imageName:_item.file];
	imageChair2.image	= [UIImage imageNamed:_item.file];
}

#pragma mark -
#pragma mark customize

- (void) buttonAction:(UIButton*)sender{
	if(sender.tag == TagRightButton){	//Next
		[self.controller moveTo:WHMenuPreview option:nil];
	}else if(sender.tag == 0){			//最終確認画面へ
		[self.controller moveTo:WHMenuPreview option:nil];
	}else if(sender.tag == 1){			//装花画面へ(戻る)
		[self.controller navigationBack:nil];
	}else if(sender.tag == 2){			//Flower Coodinateへ
		[self.controller moveTo:WHMenuG option:nil];
	}else if(sender.tag == 3){			//Wedding Bouquetへ
		[self.controller moveTo:WHMenuBouquet option:nil];
	}
}

- (void) makeReceipt{
	
	for(UIView* subview in scrollView.subviews){
		[subview removeFromSuperview];
	}
	
	UILabel* labelNotes		= [[self makeLabel:CGRectMake(24,toppadding,320,itemHeight) text:StrTitle font:[UIFont appFontJP:16]]autorelease];
	[scrollView addSubview:labelNotes];
	
	
	UILabel* exTaxLabel = [[UILabel frame:CGRectMake(0,0,220,42) text:StrExTax color:[UIColor whiteColor] font:[UIFont appFontJP:11]]autorelease];
	exTaxLabel.center	= CGPointMake(524, labelNotes.center.y);
	[scrollView addSubview:exTaxLabel];
	
	
	int index = 0;
	for(NSDictionary* dic in arrayReceipt){
		
		NSString* title	= [dic objectForKey:@"title"];
		WHItem* item	= [dic objectForKey:@"item"];
		BOOL titleIsEN	= [[dic objectForKey:@"titleIsEN"]boolValue];
		BOOL itemIsEN	= [[dic objectForKey:@"itemIsEN"]boolValue];
		BOOL showTitle	= [[dic objectForKey:@"showTitle"]boolValue];
		
		UIFont* fontLabelTitle	= (titleIsEN)?	[UIFont appFontEN:14] : [UIFont appFontJP:14];
		UIFont* fontLabelName	= (itemIsEN)?	[UIFont appFontEN:14] : [UIFont appFontJP:14];
		
		UILabel* labelTitle	= [[self makeLabel:CGRectMake(  0,54 +itemPadding*index,132,itemHeight)	text:title		font:fontLabelTitle]autorelease];
		UILabel* labelColon	= [[self makeLabel:CGRectMake(142,54 +itemPadding*index, 36,itemHeight)	text:StrColon	font:[UIFont appFontJP:14]]autorelease];
		UILabel* labelName	= [[self makeLabel:CGRectMake(176,54 +itemPadding*index,298,itemHeight)	text:item.name	font:fontLabelName]autorelease];
		UILabel* labelPrice	= [[self makeLabel:CGRectMake(496,54 +itemPadding*index, 92,itemHeight)	text:item.price	font:[UIFont appFontEN:16]]autorelease];
		
		labelTitle.alpha			= (showTitle)? 1.0f : 0.0f;
		labelTitle.textAlignment	= 
		labelPrice.textAlignment	= UITextAlignmentRight;
		
		[scrollView addSubview:labelTitle];
		[scrollView addSubview:labelColon];
		[scrollView addSubview:labelName];
		[scrollView addSubview:labelPrice];
		if(scrollView.contentSize.height < labelPrice.frame.origin.y+labelPrice.frame.size.height+toppadding){
			scrollView.contentSize = CGSizeMake(0,labelPrice.frame.origin.y+labelPrice.frame.size.height+toppadding);
		}
		index++;
	}
}

#pragma mark -
#pragma mark private

- (NSDictionary*) title:(NSString*)_title
				   item:(WHItem*)_item
			  titleIsEN:(BOOL)_titleIsEN
			   itemIsEN:(BOOL)_itemIsEN
			  showTitle:(BOOL)_showTitle{
	
	NSNumber* numtitleIsEN	= [NSNumber numberWithBool:_titleIsEN];
	NSNumber* numitemIsEN	= [NSNumber numberWithBool:_itemIsEN];
	NSNumber* numshowTitle	= [NSNumber numberWithBool:_showTitle];
	
	NSMutableDictionary* dic = [NSMutableDictionary dictionary];
	[dic setObject:_title		forKey:@"title"];
	[dic setObject:_item		forKey:@"item"];
	[dic setObject:numtitleIsEN	forKey:@"titleIsEN"];
	[dic setObject:numitemIsEN	forKey:@"itemIsEN"];
	[dic setObject:numshowTitle	forKey:@"showTitle"];
	return dic;
}

- (UILabel*) makeLabel:(CGRect)_frame text:(NSString*)_text font:(UIFont*)_font{
	UILabel* label			= [UILabel frame:_frame text:_text color:[UIColor whiteColor] font:_font];
	label.shadowColor		= [UIColor blackColor];
	label.shadowOffset		= CGSizeMake(1,1);
	label.textAlignment		= UITextAlignmentLeft;
	label.backgroundColor	= [UIColor clearColor];
	return label;
}


@end