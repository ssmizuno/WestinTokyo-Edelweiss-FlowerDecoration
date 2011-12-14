#import "WHPreviewV.h"
#import "WHPreviewVC.h"
#import "WHRoomVC.h"
#import "WHBWeddingVC.h"


static	NSString	*ImageName_CodeArea		= @"bg_codearea.png";
static	NSString	*ImageName_BgReceipt	= @"btn_tab_off.png";
static	NSString	*StrButtonTitle0		= @"ト ッ プ へ 戻 る";
static	NSString	*StrTitle				= @"お客様　選択内容の表示";
static	NSString	*StrRoom				= @"会場";
static	NSString	*StrPlan				= @"Flower's";
static	NSString	*StrVolume				= @"Style";
static	NSString	*StrCloth				= @"テーブルクロス";
static	NSString	*StrChair				= @"椅子";
static	NSString	*StrAccessory			= @"小物";
static	NSString	*StrDressW				= @"Wedding";
static	NSString	*StrBouquetW			= @"Bouquet";
static	NSString	*StrDressE				= @"Evening";
static	NSString	*StrBouquetE			= @"Bouquet";
static	NSString	*StrColon				= @"：";
static	NSString	*StrExTax				= @"表示価格はすべて税別価格です。";

static	CGFloat toppadding	= 12.0f;
static	CGFloat itemHeight	= 28.0f;
static	CGFloat itemPadding	= 28.0+2.0f;

@interface WHPreviewV (private)
- (NSDictionary*) title:(NSString*)_title
				   item:(WHItem*)_item
			  titleIsEN:(BOOL)_titleIsEN
			   itemIsEN:(BOOL)_itemIsEN
			  showTitle:(BOOL)_showTitle;
- (UILabel*) makeLabel:(CGRect)_frame text:(NSString*)_text font:(UIFont*)_font;
@end


@implementation WHPreviewV	


@synthesize	itemRoom;
@synthesize	itemPlan;
@synthesize	itemCloth;
@synthesize	itemChair;
@synthesize	itemChair2;
@synthesize	itemVolume;
@synthesize itemVolumeItem;
@synthesize	itemDress;
@synthesize	itemBouquet;
@synthesize	itemDress2;
@synthesize	itemBouquet2;
@synthesize arrayAccessory;
@synthesize textID;


#pragma mark -
#pragma mark override
	
- (id)init{
	if((self = [super init])){
		
		UIButton* button0 = [UIGradationButton frame:CGRectMake(0,0,278,48) title:StrButtonTitle0 delegate:self tag:0 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
		button0.center = CGPointMake(856,480);
		[self addSubview:button0];
		
		UIImageView* bgimageView1		= [[UIImageView point:CGPointMake(855,422+160) imageName:ImageName_CodeArea]autorelease];
		[self addSubview:bgimageView1];
		
		labelID	= [UILabel frame:CGRectMake(0,0,280,54) text:nil color:[UIColor whiteColor] font:[UIFont appFontEN:20]];
		labelID.center			= CGPointMake(855,432+164);
		labelID.shadowColor		= [UIColor clearColor];
		labelID.shadowOffset	= CGSizeMake(1,1);
		labelID.numberOfLines	= 2;
		[self addSubview:labelID];
		
		
		UIImageView* bgimageView		= [[UIImageView frame:CGRectMake(30,434,650,236) imageName:ImageName_BgReceipt]autorelease];
		bgimageView.contentMode			= UIViewContentModeScaleToFill;
		[self addSubview:bgimageView];
		
		
		CGRect frameImage = CGRectMake(30,10,964,424);
		imageRoom		= [UIImageView frame:frameImage imageName:nil];
		imagePlan		= [UIImageView frame:frameImage imageName:nil];
		imageCloth		= [UIImageView frame:frameImage imageName:nil];
		imageChair		= [UIImageView frame:frameImage imageName:nil];
		imageChair2		= [UIImageView frame:frameImage imageName:nil];
		imageVolume		= [UIImageView frame:frameImage imageName:nil];
		imageVolumeItem	= [UIImageView frame:frameImage imageName:nil];
		
		CGRect frameDress	= CGRectMake(0,0,512,648);
		CGPoint centerDress	= CGPointMake(200,222);
		imageDress		= [UIImageView frame:frameDress imageName:nil];
		imageBouquet	= [UIImageView frame:frameDress imageName:nil];
		imageDress.center	= 
		imageBouquet.center	= centerDress;
		imageDress.transform	= 
		imageBouquet.transform	= CGAffineTransformMakeScale(0.6,0.6);
		
		[self addSubview:imageRoom];
		[self addSubview:imageChair2];
		[self addSubview:imageCloth];
		[self addSubview:imagePlan];
		[self addSubview:imageDress];
		[self addSubview:imageBouquet];
		[self addSubview:imageChair];
		[self addSubview:imageVolume];
		[self addSubview:imageVolumeItem];
		
		for(int i=0;i<PLACE_COUNT;i++){
			imageAccessory[i]	= [UIImageView frame:CGRectZero imageName:nil];
			[self addSubview:imageAccessory[i]];
		}
		[self insertSubview:imageVolumeItem aboveSubview:imageAccessory[7]];
		
		scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(30,434,650,236)];
		scrollView.showsVerticalScrollIndicator		= NO;
		scrollView.showsHorizontalScrollIndicator	= NO;
		[self addSubview:scrollView];
		
		arrayReceipt = [[NSMutableArray alloc]init];
	}
	return self;
}

- (void) dealloc{
	for(int i=0;i<PLACE_COUNT;i++){
		safe_release(imageAccessory[i]);
	}
	safe_release(labelID);
	safe_release(arrayReceipt);
	safe_release(scrollView);
	safe_release(imageRoom);
	safe_release(imagePlan);
	safe_release(imageCloth);
	safe_release(imageChair);
	safe_release(imageChair2);
	safe_release(imageVolume);
	safe_release(imageDress);
	safe_release(imageBouquet);
	safe_release(imageDress2);
	safe_release(imageBouquet2);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setController:(WHVC *)_controller{
	[super setController:_controller];
	
	existBouquet	= [(WHPreviewVC*)self.controller existBouquet];
	existEvening	= [(WHPreviewVC*)self.controller existEvening];
	isInput			= [(WHPreviewVC*)self.controller isInput];
	
	if(!existBouquet){
		imageDress.alpha	= 
		imageBouquet.alpha	= 
		imageDress2.alpha	= 
		imageBouquet2.alpha	= 0.0f;
	}
}

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
//	[arrayReceipt addObject:[self title:StrVolume item:_item titleIsEN:YES itemIsEN:NO showTitle:YES]];
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
- (void) setArrayAccessory:(NSArray *)_array{
	if([_array count] > 0){
		int i=0;
		for(WHItem* item in _array){
			if(item.name && ![item.name isEqualToString:@""]){
				[arrayReceipt addObject:[self title:StrAccessory item:item titleIsEN:NO itemIsEN:NO showTitle:(i==0)]];
			}
			if(item.file && ![item.file isEqualToString:@""]){
				NSString* file	= [@"m_"stringByAppendingString:[item.file stringByDeletingPathExtension]];
				NSString* ext	= [item.file pathExtension];
				NSString* fileName;
				switch(i){
					case 0:		
					case 1:		
					case 2:		
					case 3:		fileName	= [[file stringByAppendingString:@"_080"]stringByAppendingPathExtension:ext];break;
					case 4:		
					case 5:		
					case 6:		
					case 7:		fileName	= [[file stringByAppendingString:@"_087"]stringByAppendingPathExtension:ext];break;
					case 8:		
					case 9:		
					case 10:	
					case 11:	fileName	= [[file stringByAppendingString:@"_095"]stringByAppendingPathExtension:ext];break;
					case 12:	
					case 13:	
					case 14:	
					case 15:	fileName	= [[file stringByAppendingString:@""]stringByAppendingPathExtension:ext];break;
					default:	fileName	= nil;
				}
				
				CGFloat	centerX;
				CGFloat	bottomY;
				UIImage* image = [UIImage imageNamed:fileName];
				CGFloat imageW	= ((int)image.size.width%2 == 0)?  image.size.width  : image.size.width+1;
				CGFloat imageH	= ((int)image.size.height%2 == 0)? image.size.height : image.size.height+1;
				switch(i%4){
					case 0:	centerX	= 600;	break;
					case 1:	centerX	= 664;	break;
					case 2:	centerX	= 774;	break;
					case 3:	centerX	= 844;	break;
				}
				switch(i/4){
					case 0:	bottomY	= 340;	break;
					case 1:	bottomY	= 366;	break;
					case 2:	bottomY	= 396;	break;
					case 3:	bottomY	= 426;	break;
				}
				switch(i/4){
					case 0:	centerX	-= 3;	break;
					case 1:	centerX	+= 5;	break;
					case 2:	centerX	-= 5;	break;
					case 3:	centerX;	break;
				}
				imageAccessory[i].frame		= CGRectMake(0,bottomY-imageH,imageW,imageH);
				CGFloat centerY		= ((int)imageAccessory[i].center.y%2 == 0)? (int)imageAccessory[i].center.y : (int)(imageAccessory[i].center.y)+1;
				imageAccessory[i].center	= CGPointMake(centerX,centerY);
				imageAccessory[i].image		= image;
			}
			i++;
		}
	}
}
- (void) setItemDress:(WHItem*)_item{
	if(existBouquet){
		[arrayReceipt addObject:[self title:StrDressW item:_item titleIsEN:YES itemIsEN:NO showTitle:YES]];
		imageDress.image	= [UIImage imageNamed:_item.file];
	}
}
- (void) setItemBouquet:(WHItem*)_item{
	if(existBouquet){
		[arrayReceipt addObject:[self title:StrBouquetW item:_item titleIsEN:YES itemIsEN:YES showTitle:YES]];
		imageBouquet.image	= [UIImage imageNamed:_item.file];
	}
}
- (void) setItemDress2:(WHItem*)_item{
	if(existBouquet && existEvening){
		[arrayReceipt addObject:[self title:StrDressE item:_item titleIsEN:YES itemIsEN:NO showTitle:YES]];
		imageDress2.image	= [UIImage imageNamed:_item.file];
	}
}
- (void) setItemBouquet2:(WHItem*)_item{
	if(existBouquet && existEvening){
		[arrayReceipt addObject:[self title:StrBouquetE item:_item titleIsEN:YES itemIsEN:YES showTitle:YES]];
		imageDress2.image	= [UIImage imageNamed:_item.file];
	}
}

- (void) setTextID:(NSString *)_textID{
	labelID.text = _textID;
}

#pragma mark -
#pragma mark customized

- (void) buttonAction:(UIButton*)sender{
	if(sender.tag == 0){
		[self.controller moveTo:WHMenuTop option:nil];
		//	}else if(sender.tag == 1){
		//		//change dress
		//		if(!existBouquet)	return;
		//		
		//		if(!imageDress2.superview){
		//			[imageBase insertSubview:imageDress2 belowSubview:imageDress];
		//			[imageBase insertSubview:imageBouquet2 aboveSubview:imageDress2];
		//		}
		//		CGFloat dressalpha = (imageDress.alpha == 1.0)? 0.0f : 1.0f;
		//		[imageDress animation:@"" alpha:dressalpha time:1.0 delegate:self];
		//		[imageBouquet animation:@"" alpha:dressalpha time:1.0 delegate:self];
		//		[imageDress2 animation:@"" alpha:!(CGFloat)dressalpha time:1.0 delegate:self];
		//		[imageBouquet2 animation:@"" alpha:!(CGFloat)dressalpha time:1.0 delegate:self];
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