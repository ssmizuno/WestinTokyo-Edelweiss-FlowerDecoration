#import "WHDressView.h"
#import "WHBWeddingVC.h"
#import "WHBEveningVC.h"
#import "WHBouquetConfirmVC.h"
#import "UIGradationView.h"

static float	animationTime	= 0.5f;
static NSInteger	ButtonTag_Bouquet		= 4;
static NSInteger	ButtonTag_Close			= 5;



@implementation WHDressView


@synthesize controller;
@synthesize itemDress;
@synthesize itemBouquet;
@synthesize showBackGround;


- (id)initWithFrame:(CGRect)frame{
	if((self = [super initWithFrame:frame])){
		
		UIGradationView* bg = [[[UIGradationView alloc]initWithFrame:CGRectMake(0,0,frame.size.width,frame.size.height)]autorelease];
		CGFloat components[8] = {
			0.633, 0.585, 0.503, 1.0,
			0.215, 0.187, 0.130, 1.0
		};
		NSMutableArray* array = [NSMutableArray array];
		for(int i=0;i<8;i++)		[array addObject:[NSNumber numberWithFloat:components[i]]];
		bg.components	= array;
		bg.startPoint	= CGPointZero;
		bg.endPoint		= CGPointMake(bg.frame.size.width,bg.frame.size.height);
		bg.tag			= 999;
		[self addSubview:bg];
		
		imageDress	= [UIImageView frame:bg.frame imageName:nil];
		[self addSubview:imageDress];
		
		imageBouquet	= [UIImageView frame:self.frame imageName:nil];
		[self addSubview:imageBouquet];
		
		buttonBouquet		= [UIButton buttonWithType:UIButtonTypeCustom];
		buttonBouquet.frame	= imageBouquet.frame;
		buttonBouquet.tag	= ButtonTag_Bouquet;
		[buttonBouquet addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchDown];
		[self addSubview:buttonBouquet];
		
		imageBigBouquet	= [UIImageView frame:imageBouquet.frame imageName:nil];
		imageBigBouquet.alpha				= 0.0f;
		imageBigBouquet.backgroundColor		= [UIColor colorWithRed:0.973 green:0.846 blue:0.994 alpha:1.000];
		imageBigBouquet.layer.masksToBounds	= YES;
		imageBigBouquet.layer.cornerRadius	= 4.0f;
		[self addSubview:imageBigBouquet];
	}
	return self;
}

- (void) dealloc{
	safe_release(imageDress);
	safe_release(imageBouquet);
	safe_release(imageBigBouquet);
	[super dealloc];
}

- (void) setShowBackGround:(BOOL)_show{
	[self viewWithTag:999].alpha	= (_show)? 1.0f : 0.0f;
}

- (void) setItemDress:(WHItem*)_item{
	NSString* imageName	= _item.file;
	UIImageView* tmpImageView	= [[UIImageView frame:imageDress.frame image:imageDress.image]autorelease];
	tmpImageView.tag = 99;
	[self insertSubview:tmpImageView belowSubview:imageDress];
	
	[tmpImageView animation:@"" alpha:0.0 time:animationTime delegate:self];
	
	imageDress.alpha	= 0.0f;
	imageDress.image	= [UIImage imageNamed:imageName];
	[imageDress animation:@"" alpha:1.0 time:animationTime delegate:self];
}

- (void) setItemBouquet:(WHItem*)_item{
	NSString* imageName	= _item.file;
	
	UIImageView* tmpImageView	= [[UIImageView frame:imageBouquet.frame image:imageBouquet.image]autorelease];
	tmpImageView.tag = 99;
	[self addSubview:tmpImageView];
	
	[tmpImageView animation:@"" alpha:0.0 time:animationTime delegate:self];
	
	imageBouquet.alpha	= 0.0f;
	imageBouquet.image	= [UIImage imageNamed:imageName];
	[imageBouquet animation:@"" alpha:1.0 time:animationTime delegate:self];
}

- (void) buttonAction:(UIButton*)sender{
	
	if(sender.tag == ButtonTag_Bouquet){
		
		AppDelegate* appDelegate	= (AppDelegate*)[[UIApplication sharedApplication]delegate];
		NSInteger currentBouquet;
		if([self.controller isMemberOfClass:[WHBWeddingVC class]]){
			currentBouquet = [appDelegate currentBouquet];
		}else if([self.controller isMemberOfClass:[WHBEveningVC class]]){
			currentBouquet = [appDelegate currentBouquet2];
		}else if([self.controller isMemberOfClass:[WHBouquetConfirmVC class]]){
			if(self.tag == 1){
				currentBouquet = [appDelegate currentBouquet];
			}else if(self.tag == 2){
				currentBouquet = [appDelegate currentBouquet2];
			}
		}
			
		NSString* imageName		= [NSString stringWithFormat:@"bouquet_big_%02d.png",currentBouquet];
		UIImage* image = [UIImage imageNamed:imageName];
		if(image == nil){
			return;
		}
		
		imageBigBouquet.image	= image;
		
		[UIView beginAnimations:@"ShowBigBouquet" context:nil];
		[UIView setAnimationDuration:0.2f];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDelegate:self];
		[UIView setAnimationWillStartSelector:@selector(startAnimation:)];
		[UIView setAnimationDidStopSelector:@selector(endAnimation:)];
		imageBigBouquet.alpha	= 1.0f;
		imageBigBouquet.frame	= CGRectMake(imageBigBouquet.center.x-348/2,imageBigBouquet.center.y-438/2,348,438);
		[UIView commitAnimations];
		
		UIButton* buttonClose	= [UIButton buttonWithType:UIButtonTypeCustom];
		buttonClose.frame		= self.window.frame;
		buttonClose.alpha		= 1.0f;
		buttonClose.tag			= ButtonTag_Close;
		[buttonClose addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchDown];
		[self.window addSubview:buttonClose];
		
	}else if(sender.tag == ButtonTag_Close){
		[sender removeFromSuperview];
		
		[UIView beginAnimations:@"HideBigBouquet" context:nil];
		[UIView setAnimationDuration:0.2f];
		[UIView setAnimationCurve:UIViewAnimationCurveLinear];
		[UIView setAnimationDelegate:self];
		[UIView setAnimationWillStartSelector:@selector(startAnimation:)];
		[UIView setAnimationDidStopSelector:@selector(endAnimation:)];
		imageBigBouquet.alpha	= 0.0f;
		imageBigBouquet.frame	= imageBouquet.frame;
		[UIView commitAnimations];
	}
}

#pragma mark -
#pragma mark animation delegate

- (void) startAnimation:(NSString*)animationID{
}

- (void) endAnimation:(NSString*)animationID{
	if([animationID isEqualToString:@"ShowBigBouquet"]){
	}else if([animationID isEqualToString:@"HideBigBouquet"]){
	}else {
		[[self viewWithTag:99] removeFromSuperview];
	}
}


@end