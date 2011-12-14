#import "WHThumbnail.h"


@interface WHThumbnail (private)
- (void)deselect;
@end


@implementation WHThumbnail



@synthesize delegate;
@synthesize item;
@synthesize check;


#pragma mark -
#pragma mark override

- (id)initWithFrame:(CGRect)frame{
	if((self = [super initWithFrame:frame])){
		NSInteger selfWidth		= self.frame.size.width;
		NSInteger selfHeight	= self.frame.size.height;
		
		UIColor* bgc = [UIColor colorWithRed:0.458 green:0.424 blue:0.353 alpha:1.000];
		UIColor* bgColor	= [UIColor whiteColor];
		
		UIView* bg = [[UIView frame:CGRectMake(1,1,selfWidth-2,selfHeight-2) backgroundColor:bgc alpha:0.8f]autorelease];
		bg.layer.masksToBounds	= YES;
		bg.layer.cornerRadius	= 4.0f;
		[self addSubview:bg];
		
		
		viewSelected		= [UIView frame:CGRectZero backgroundColor:bgColor alpha:0.0f];
		viewSelected.layer.masksToBounds	= YES;
		viewSelected.layer.cornerRadius		= 4.0f;
		[self addSubview:viewSelected];
		
		CGRect frameImage	= CGRectMake(0,0,selfWidth,selfWidth*5/4);
		imageView	= [UIImageView frame:frameImage image:nil];
		imageView.contentMode	= UIViewContentModeScaleAspectFit;
		[self addSubview:imageView];
	}
	return self;
}

- (void) dealloc{
	safe_release(viewSelected);
	safe_release(imageView);
	safe_release(labelName);
	safe_release(labelPrice);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setItem:(WHItem *)_item{
	item = _item;
	
	NSString* imageName	= item.thumb;
	NSInteger selfWidth		= self.frame.size.width;
	NSInteger selfHeight	= self.frame.size.height;
	
	viewSelected.frame		= CGRectMake(0,0,selfWidth, selfHeight);
	imageView.image		= [UIImage imageNamed:imageName];
}

- (void) setCheck:(BOOL)_check{
	if(_check == NO){
		[self deselect];
	}
}

#pragma mark -
#pragma mark customized

- (void)deselect:(id)sender{
	if(viewSelected.alpha == 0.8f){
		[viewSelected animation:@"" alpha:0.0f time:0.3f delegate:self];
	}
}

- (void)deselect{
	[self performSelector:@selector(deselect:) withObject:nil afterDelay:0.2f];
}

- (void) handleSingleTap{
	[self deselect];
	
	if([delegate respondsToSelector:@selector(buttonAction:)]){
		[delegate performSelector:@selector(buttonAction:) withObject:self];
	}
}

#pragma mark -
#pragma mark UIResponderMethod

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event{
	viewSelected.alpha	= 0.8f;
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(handleSingleTap) object:nil];
}

- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event{
	[self deselect];
}

- (void) touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event{
	[self deselect];
	
	UITouch* touch = [touches anyObject];
	if ([touch tapCount] == 1) {
		[self performSelector:@selector(handleSingleTap) withObject:nil afterDelay:0.2f];
	}
}

- (void)touchesCancelled:(NSSet*)touches withEvent:(UIEvent*)event {
	[self deselect];
}


@end