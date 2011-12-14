#import "WHBouquetConfirmV.h"
#import "WHBWeddingVC.h"
#import "WHRoomVC.h"

static	NSString	*strLeftName		= @"Wedding";
static	NSString	*strRightName		= @"Evening";
static	NSString	*strConfirm			= @"ブーケ内容をご確認ください";
static	NSString	*strWedding			= @"Wedding";
static	NSString	*strEvening			= @"Evening";
static	NSString	*strPrice			= @"価格";
static	NSString	*strTax				= @"表示価格はすべて税別価格です。";
static	NSString	*strColon			= @":";

//static	NSString	*ImageName_BtnW_on		= @"btn_weddings_on.png";
//static	NSString	*ImageName_BtnW_off		= @"btn_weddings_off.png";
//static	NSString	*ImageName_BtnE_on		= @"btn_evenings_on.png";
//static	NSString	*ImageName_BtnE_off		= @"btn_evenings_off.png";
static	NSString	*ImageName_BtnF_on		= @"btn_flowerc_on.png";
static	NSString	*ImageName_BtnF_off		= @"btn_flowerc_off.png";


@implementation WHBouquetConfirmV

@synthesize existEvening;
@synthesize	itemWDress;
@synthesize	itemWBouquet;
@synthesize	itemEDress;
@synthesize	itemEBouquet;

- (id)init{
	if((self = [super init])){
		
		UIGradationView* bg = [[[UIGradationView alloc]initWithFrame:CGRectMake(30,13,964,422)]autorelease];
		CGFloat components[8] = {
			0.900, 0.900, 0.900, 0.999,
			0.150, 0.150, 0.150, 0.999,
		};
		NSMutableArray* array = [NSMutableArray array];
		for(int i=0;i<8;i++)		[array addObject:[NSNumber numberWithFloat:components[i]]];
		bg.components	= array;
		bg.startPoint	= CGPointMake(bg.frame.size.width/2,0);
		bg.endPoint		= CGPointMake(bg.frame.size.width/2,bg.frame.size.height);
		[self addSubview:bg];
		
		dressViewW = [[WHDressView alloc]initWithFrame:CGRectMake(0,0,512,648)];
		dressViewE = [[WHDressView alloc]initWithFrame:CGRectMake(0,0,512,648)];
		dressViewW.transform = CGAffineTransformMakeScale(0.65,0.65);
		dressViewE.transform = CGAffineTransformMakeScale(0.65,0.65);
		dressViewW.center	= CGPointMake(512-166,self.frame.size.height/2-110);
		dressViewE.center	= CGPointMake(512+166,self.frame.size.height/2-110);
		dressViewW.tag		= 1;
		dressViewE.tag		= 2;
		[self addSubview:dressViewW];
		[self addSubview:dressViewE];
		
		
		UILabel* label0 = [[UILabel frame:CGRectMake( 54,400,120,32) text:strLeftName color:[UIColor whiteColor] font:[UIFont appFontEN:18]]autorelease];
		UILabel* label1 = [[UILabel frame:CGRectMake(846,400,120,32) text:strRightName color:[UIColor whiteColor] font:[UIFont appFontEN:18]]autorelease];
		[self addSubview:label0];
		[self addSubview:label1];
		
		UIGradationView* bg1 = [[[UIGradationView alloc]initWithFrame:CGRectMake(30,462,610,182)]autorelease];
		CGFloat components1[8] = {
			0.333, 0.309, 0.243, 0.999,
			0.487, 0.446, 0.327, 0.999,
		};
		NSMutableArray* array1 = [NSMutableArray array];
		for(int i=0;i<8;i++)		[array1 addObject:[NSNumber numberWithFloat:components1[i]]];
		bg1.components	= array1;
		bg1.startPoint	= CGPointMake(0,bg1.frame.size.height/2);
		bg1.endPoint		= CGPointMake(bg1.frame.size.width,bg1.frame.size.height/2);
		[self addSubview:bg1];
		
		UILabel* labelSConfirm	= [[UILabel frame:CGRectMake( 80,480,500,32) text:strConfirm color:[UIColor whiteColor] font:[UIFont appFontJP:18]]autorelease];
		UILabel* labelSWedding	= [[UILabel frame:CGRectMake(100,530,120,32) text:strWedding color:[UIColor whiteColor] font:[UIFont appFontEN:16]]autorelease];
		UILabel* labelSEvening	= [[UILabel frame:CGRectMake(100,560,120,32) text:strEvening color:[UIColor whiteColor] font:[UIFont appFontEN:16]]autorelease];
		UILabel* labelSPrice0	= [[UILabel frame:CGRectMake(400,530,120,32) text:strPrice color:[UIColor whiteColor] font:[UIFont appFontJP:16]]autorelease];
		UILabel* labelSPrice1	= [[UILabel frame:CGRectMake(400,560,120,32) text:strPrice color:[UIColor whiteColor] font:[UIFont appFontJP:16]]autorelease];
		labelSConfirm.textAlignment	= 
		labelSWedding.textAlignment	= 
		labelSEvening.textAlignment	= 
		labelSPrice0.textAlignment	= 
		labelSPrice1.textAlignment	= UITextAlignmentLeft;
		[self addSubview:labelSConfirm];
		[self addSubview:labelSWedding];
		[self addSubview:labelSEvening];
		[self addSubview:labelSPrice0];
		[self addSubview:labelSPrice1];
		
		UILabel* labelcolon0	= [[UILabel frame:CGRectMake(0,0,32,32) text:strColon color:[UIColor whiteColor] font:[UIFont appFontJP:18]]autorelease];
		UILabel* labelcolon1	= [[UILabel frame:CGRectMake(0,0,32,32) text:strColon color:[UIColor whiteColor] font:[UIFont appFontJP:18]]autorelease];
		UILabel* labelcolon2	= [[UILabel frame:CGRectMake(0,0,32,32) text:strColon color:[UIColor whiteColor] font:[UIFont appFontJP:18]]autorelease];
		UILabel* labelcolon3	= [[UILabel frame:CGRectMake(0,0,32,32) text:strColon color:[UIColor whiteColor] font:[UIFont appFontJP:18]]autorelease];
		labelcolon0.center	= CGPointMake(186,546);
		labelcolon1.center	= CGPointMake(186,576);
		labelcolon2.center	= CGPointMake(440,546);
		labelcolon3.center	= CGPointMake(440,576);
		[self addSubview:labelcolon0];
		[self addSubview:labelcolon1];
		[self addSubview:labelcolon2];
		[self addSubview:labelcolon3];
		
		/*UILabel* labelTax	= [[UILabel frame:CGRectMake(0,0,64,64) text:strTax color:[UIColor whiteColor] font:[UIFont appFontJP:14]]autorelease];
         labelTax.center		= CGPointMake(540,600);
         [self addSubview:labelTax];*/
        
        UILabel* labelTax	= [[UILabel frame:CGRectMake(410,600,254,64) text:strTax color:[UIColor whiteColor] font:[UIFont appFontJP:14]]autorelease];
		[self addSubview:labelTax];
		
		
		labelWedding	= [UILabel frame:CGRectMake(220,530,120,32) text:strWedding color:[UIColor whiteColor] font:[UIFont appFontEN:18]];
		labelEvening	= [UILabel frame:CGRectMake(220,560,120,32) text:strEvening color:[UIColor whiteColor] font:[UIFont appFontEN:18]];
		labelWedding.textAlignment	= 
		labelEvening.textAlignment	= UITextAlignmentLeft;
		labelWedding.backgroundColor	= 
		labelEvening.backgroundColor	= [UIColor clearColor];
		[self addSubview:labelWedding];
		[self addSubview:labelEvening];
		
		labelWeddingPrice	= [UILabel frame:CGRectMake(470,530,120,32) text:nil color:[UIColor whiteColor] font:[UIFont appFontEN:18]];
		labelEveningPrice	= [UILabel frame:CGRectMake(470,560,120,32) text:nil color:[UIColor whiteColor] font:[UIFont appFontEN:18]];
		labelWeddingPrice.textAlignment	= 
		labelEveningPrice.textAlignment	= UITextAlignmentLeft;
		labelWeddingPrice.backgroundColor	= 
		labelEveningPrice.backgroundColor	= [UIColor clearColor];
		[self addSubview:labelWeddingPrice];
		[self addSubview:labelEveningPrice];
		
//		UIButton* button0	= [UIButton point:CGPointZero imageName:ImageName_BtnW_off delegate:self tag:0];
//		UIButton* button1	= [UIButton point:CGPointZero imageName:ImageName_BtnE_off delegate:self tag:1];
		UIButton* button2	= [UIButton point:CGPointZero imageName:ImageName_BtnF_off delegate:self tag:2];
//		[button0 setBackgroundImage:[UIImage imageNamed:ImageName_BtnW_on] forState:UIControlStateHighlighted];
//		[button1 setBackgroundImage:[UIImage imageNamed:ImageName_BtnE_on] forState:UIControlStateHighlighted];
		[button2 setBackgroundImage:[UIImage imageNamed:ImageName_BtnF_on] forState:UIControlStateHighlighted];
//		button0.center = CGPointMake(834,512+54*0);
//		button1.center = CGPointMake(834,512+54*1);
		button2.center = CGPointMake(834,512+54*2);
//		[self addSubview:button0];
//		[self addSubview:button1];
		[self addSubview:button2];
		
		label0.tag				= 10000;
		label1.tag				= 9999;
		labelSEvening.tag		= 9998;
		labelSPrice1.tag		= 9997;
		labelcolon1.tag			= 9996;
		labelcolon3.tag			= 9995;
	}
	return self;
}

- (void) dealloc{
	safe_release(dressViewW);
	safe_release(dressViewE);
	safe_release(labelWedding);
	safe_release(labelEvening);
	safe_release(labelWeddingPrice);
	safe_release(labelEveningPrice);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setExistEvening:(BOOL)_exist{
	if(!_exist){
		dressViewE.alpha		= 
		labelEvening.alpha		= 
		labelEveningPrice.alpha	= 
		[self viewWithTag:9999].alpha = 
		[self viewWithTag:9998].alpha = 
		[self viewWithTag:9997].alpha = 
		[self viewWithTag:9996].alpha = 
		[self viewWithTag:9995].alpha = 0.0f;
		
		dressViewW.center	= CGPointMake(self.frame.size.width/2,dressViewW.center.y);
		UILabel* label	= (UILabel*)[self viewWithTag:10000];
		label.center	= CGPointMake(label.center.x+166, label.center.y);
	}
}

- (void) setController:(id)_controller{
	[super setController:_controller];
	dressViewW.controller	= _controller;
	dressViewE.controller	= _controller;
}

- (void) setItemWDress:(WHItem *)_item{
	dressViewW.itemDress	= _item;
}

- (void) setItemWBouquet:(WHItem *)_item{
	labelWedding.text		= _item.name;
	labelWeddingPrice.text	= _item.price;
	dressViewW.itemBouquet	= _item;
}

- (void) setItemEDress:(WHItem *)_item{
	dressViewE.itemDress	= _item;
}

- (void) setItemEBouquet:(WHItem *)_item{
	labelEvening.text		= _item.name;
	labelEveningPrice.text	= _item.price;
	dressViewE.itemBouquet	= _item;
}

- (void) buttonAction:(UIButton*)sender{
	if(sender.tag == TagRightButton){	//Next
		if([self.controller.navigationController isIncludeClass:[WHRoomVC class]]){
			[self.controller moveTo:WHMenuPreview option:nil];
		}else {
			[self.controller moveTo:WHMenuRoom option:nil];
		}
	}else {
		if(sender.tag == 0){		//Wedding選定画面へ
			UIViewController* vc = [self.controller.navigationController getVC:[WHBWeddingVC class]];
			if(vc)[self.controller navigationBack:vc];
		}else if(sender.tag == 1){	//Evening選定画面へ
			[self.controller navigationBack:nil];
		}else if(sender.tag == 2){	//Flower Coodinateへ
			[self.controller moveTo:WHMenuRoom option:nil];
		}
	}
}

@end