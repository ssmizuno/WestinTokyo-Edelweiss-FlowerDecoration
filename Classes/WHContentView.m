#import "WHContentView.h"

static float	animationTime	= 0.5f;

@implementation WHContentView



@synthesize controller;
@synthesize appDelegate;

- (id)init{
	if((self = [super initWithFrame:CGRectMake(0,50,1024,668)])){
		appDelegate	= (AppDelegate*)[[UIApplication sharedApplication]delegate];
	}
	return self;
}

- (void) dealloc{
	[super dealloc];
}

#pragma mark -
#pragma mark animation delegate

- (void) startAnimation:(NSString*)animationID{
	
}

- (void) endAnimation:(NSString*)animationID{
	if([animationID isEqualToString:@""]){
		[[self viewWithTag:99] removeFromSuperview];
	}
}

- (void) fadeInOut:(UIImageView*)_imageView imageName:(NSString*)_imageName{
	
	UIImageView* tmpImageView	= [UIImageView frame:_imageView.frame image:_imageView.image];
	tmpImageView.tag = 99;
	[self addSubview:tmpImageView];
	
	[tmpImageView animation:@"" alpha:0.0 time:animationTime delegate:self];
	
	_imageView.alpha	= 0.0f;
	_imageView.image	= [UIImage imageNamed:_imageName];
	[_imageView animation:@"" alpha:1.0 time:animationTime delegate:self];
}


@end