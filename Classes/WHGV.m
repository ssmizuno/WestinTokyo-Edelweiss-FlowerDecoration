#import "WHGV.h"
#import "WHPopOverVC.h"
#import "WHPlanVC.h"


static	NSString	*ImageName_Bg			= @"btn_tab_off2.png";
static	NSString	*ImageName_Off			= @"btn_tmp_unenable.png";
static	NSString	*ImageName_On			= @"btn_tmp_enable.png";
static	NSString	*ImageName_Viewtable	= @"img_viewtable.png";

//static	NSString	*StrButtonTitle0	= @"最 終 確 認 画 面 へ";
//static	NSString	*StrButtonTitle1	= @"装 花 画 面 へ";
static	NSString	*Str0				= @"Table Decoration";
static	NSString	*Str1				= @"キャンドル・プチフルール・デコレーションフラワー\nのイメージをご覧いただけます";
static	NSString	*Str2				= @"テーブルを上から見たエリアです。";
static	NSString	*Str3				= @"配置を変えたいエリアをタッチ、表示されたアイコンを選択して下さい。";
static	NSString	*Str4				= @"すでに配置されたエリア、配置を変更されたエリアは色分けされます。";

static	NSString	*ImageName_BtnFinish_on		= @"btn_Finish_on.png";
static	NSString	*ImageName_BtnFinish_off	= @"btn_Finish_off.png";
static	NSString	*ImageName_BtnFD_on		= @"btn_FD_on.png";
static	NSString	*ImageName_BtnFD_off    = @"btn_FD_off.png";



@implementation WHGV

@synthesize itemRoom;
@synthesize itemPlan;
@synthesize itemCloth;
@synthesize itemChair;
@synthesize itemChair2;
@synthesize itemVolume;
@synthesize arrAccessory;

@synthesize itemsForAccessory;
@synthesize checkItemsForAccessory;

- (id)init{
	if((self = [super init])){
		
		UIImageView* bg = [[UIImageView frame:CGRectMake(0,0,1024,668) imageName:ImageName_Bg]autorelease];
		[self addSubview:bg];
		
		
		UIGradationView* tmpView = [[[UIGradationView alloc]initWithFrame:CGRectMake(16,32,380,112)]autorelease];
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
		
		UIGradationView* blueView = [[[UIGradationView alloc]initWithFrame:CGRectMake(16,162,380,326)]autorelease];
		CGFloat components1[8] = {
			0.458, 0.587, 0.686, 0.900,
			0.323, 0.367, 0.418, 0.900
		};
		NSMutableArray* array1 = [NSMutableArray array];
		for(int i=0;i<8;i++)		[array1 addObject:[NSNumber numberWithFloat:components1[i]]];
		blueView.components	= array1;
		blueView.startPoint	= CGPointZero;
		blueView.endPoint	= CGPointMake(blueView.frame.size.width,blueView.frame.size.height);
		[self addSubview:blueView];
		
		UIImageView* overTableView = [[UIImageView frame:CGRectMake(16,204,380,238) imageName:ImageName_Viewtable]autorelease];
		[self addSubview:overTableView];
		
		UILabel* label0 = [[UILabel frame:CGRectMake( 34, 36,380,32) text:Str0 color:[UIColor whiteColor] font:[UIFont appFontEN:18]]autorelease];
		UILabel* label1 = [[UILabel frame:CGRectMake( 40, 86,380,32) text:Str1 color:[UIColor whiteColor] font:[UIFont appFontJP:13]]autorelease];
		UILabel* label2 = [[UILabel frame:CGRectMake( 24,160,380,32) text:Str2 color:[UIColor whiteColor] font:[UIFont appFontJP:11]]autorelease];
		UILabel* label3 = [[UILabel frame:CGRectMake( 24,176,380,32) text:Str3 color:[UIColor whiteColor] font:[UIFont appFontJP:11]]autorelease];
		UILabel* label4 = [[UILabel frame:CGRectMake( 32,450,380,32) text:Str4 color:[UIColor whiteColor] font:[UIFont appFontJP:11]]autorelease];
		label1.numberOfLines	= 2;
		label0.textAlignment	= 
		label1.textAlignment	= 
		label2.textAlignment	= 
		label3.textAlignment	= 
		label4.textAlignment	= UITextAlignmentLeft;	
		[self addSubview:label0];
		[self addSubview:label1];
		[self addSubview:label2];
		[self addSubview:label3];
		[self addSubview:label4];
		
		int i=0;
		for(int a=0;a<4;a++){
			for(int b=0;b<4;b++){
				CGPoint point	= CGPointMake(b*62+112,a*38+270);
				button[i] = [UIButton point:point imageName:ImageName_Off delegate:self tag:i+100];
				[self addSubview:button[i]];
				i++;
			}
		}
		CGRect frameImage	= CGRectMake(0,0,604,648);
		CGPoint centerImage	= CGPointMake(712,self.frame.size.height/2);
		imageRoom	= [UIImageView frame:frameImage imageName:nil];
		imagePlan	= [UIImageView frame:frameImage imageName:nil];
		imageCloth	= [UIImageView frame:frameImage imageName:nil];
		imageChair	= [UIImageView frame:frameImage imageName:nil];
		imageChair2	= [UIImageView frame:frameImage imageName:nil];
		imageVolume	= [UIImageView frame:frameImage imageName:nil];
		
		imageRoom.center	= 
		imagePlan.center	= 
		imageCloth.center	= 
		imageChair.center	= 
		imageChair2.center	= 
		imageVolume.center	= centerImage;
		
		[self addSubview:imageRoom];
		[self addSubview:imageChair2];
		[self addSubview:imageCloth];
		[self addSubview:imagePlan];
		[self addSubview:imageChair];
		
		
		i=0;
		CGFloat shift			= 68.0;
		CGFloat base			= 440.0;
		CGRect frameAccessory	= CGRectMake(0,0,300,300);
		
		for(int a=0;a<4;a++){
			for(int b=0;b<4;b++){
				CGFloat	centerX;
				CGFloat	centerY;
				CGFloat scale;
				switch(a){
					case 0:	scale	= 0.80f;	break;
					case 1:	scale	= 0.85f;	break;
					case 2:	scale	= 0.95f;	break;
					case 3:	scale	= 1.00f;	break;
				}
				switch(b){
					case 0:	centerX	= centerImage.x-shift*2.0;	break;
					case 1:	centerX	= centerImage.x-shift*0.9;	break;
					case 2:	centerX	= centerImage.x+shift*0.9;	break;
					case 3:	centerX	= centerImage.x+shift*2.0;	break;
				}
				switch(a){
					case 0:	centerY	= base-30;	break;
					case 1:	centerY	= base-20;	break;
					case 2:	centerY	= base-11;	break;
					case 3:	centerY	= base;	break;
				}
				switch(a){
					case 0:	centerX	-= 3;	break;
					case 1:	centerX	+= 5;	break;
					case 2:	centerX	-= 5;	break;
					case 3:	centerX;	break;
				}
				imageAccessory[i]	= [UIImageView frame:frameAccessory imageName:nil];
				imageAccessory[i].transform	= CGAffineTransformMakeScale(scale, scale);
				imageAccessory[i].center	= CGPointMake(centerX, centerY);
				[self addSubview:imageAccessory[i]];
				i++;
			}
		}
		[self insertSubview:imageVolume aboveSubview:imageAccessory[7]];
		
		/*UIButton* button0 = [UIGradationButton frame:CGRectMake(0,0,278,48) title:StrButtonTitle0 delegate:self tag:0 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];
         UIButton* button1 = [UIGradationButton frame:CGRectMake(0,0,278,48) title:StrButtonTitle1 delegate:self tag:1 font:[UIFont appFontJP:16] style:UIGradationStyleBlack];*/
        UIButton* button0	= [UIButton point:CGPointZero imageName:ImageName_BtnFinish_off delegate:self tag:0];
		UIButton* button1	= [UIButton point:CGPointZero imageName:ImageName_BtnFD_off delegate:self tag:1];
        
        [button0 setBackgroundImage:[UIImage imageNamed:ImageName_BtnFinish_on] forState:UIControlStateHighlighted];
		[button1 setBackgroundImage:[UIImage imageNamed:ImageName_BtnFD_on] forState:UIControlStateHighlighted];
		
		button0.center = CGPointMake(204,602-30);
		button1.center = CGPointMake(204,602+30);
		
		[self addSubview:button0];
		[self addSubview:button1];
	}
	return self;
}

- (void) dealloc{
	for(int i=0;i<PLACE_COUNT;i++){
		safe_release(imageAccessory[i]);
	}
	safe_release(imageRoom);
	safe_release(imagePlan);
	safe_release(imageCloth);
	safe_release(imageChair);
	safe_release(imageChair2);
	safe_release(imageVolume);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setArrAccessory:(NSMutableArray *)_array{
	for(int i=0;i<PLACE_COUNT;i++){
		WHItem* item		= [_array objectAtIndex:i];
		NSString* file		= [item.file stringByDeletingPathExtension];
		NSString* ext		= [item.file pathExtension];
		NSString* fileName	= [[file stringByAppendingString:@"_300"]stringByAppendingPathExtension:ext];
		
		[self fadeInOut:imageAccessory[i] imageName:fileName];
		
		if(![item.file isEqualToString:@""]){
			[button[i] setBackgroundImage:[UIImage imageNamed:ImageName_On] forState:UIControlStateNormal];
		}else {
			[button[i] setBackgroundImage:[UIImage imageNamed:ImageName_Off] forState:UIControlStateNormal];
		}
	}
}

- (void) setItemRoom:(WHItem *)_item{	imageRoom.image	= [UIImage imageNamed:_item.file];}
- (void) setItemPlan:(WHItem *)_item{	[self fadeInOut:imagePlan imageName:_item.file];}
- (void) setItemCloth:(WHItem *)_item{	[self fadeInOut:imageCloth imageName:_item.file];}
- (void) setItemChair:(WHItem *)_item{	[self fadeInOut:imageChair imageName:_item.file];}
- (void) setItemChair2:(WHItem *)_item{	[self fadeInOut:imageChair2 imageName:_item.file];}
- (void) setItemVolume:(WHItem *)_item{	[self fadeInOut:imageVolume imageName:_item.file];}

#pragma mark -
#pragma mark customize

- (void) buttonAction:(UIButton*)_sender{
	if(_sender.tag == TagRightButton){	//Next
		[self.controller moveTo:WHMenuPreview option:nil];
	}else if(_sender.tag == 0){			//最終確認画面へ
		[self.controller moveTo:WHMenuPreview option:nil];
	}else if(_sender.tag == 1){			//装花画面へ
		UIViewController* vc = [self.controller.navigationController getVC:[WHPlanVC class]];
		if(vc)[self.controller navigationBack:vc];
	}else {		//PopOver
		WHPopOverVC* vc = [[WHPopOverVC alloc]init];
		vc.tag						= _sender.tag;
		vc.baseController			= self.controller;
		vc.itemsForAccessory		= itemsForAccessory;
		vc.checkItemsForAccessory	= checkItemsForAccessory;
		[vc showInView:self frame:_sender.frame];
	}
}


@end