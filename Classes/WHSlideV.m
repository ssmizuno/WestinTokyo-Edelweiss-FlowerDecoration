#import "WHSlideV.h"

#define SLIDECOUNT	25

static	NSString	*ImageName_X	= @"btn_x.png";
static	NSString	*ImageName_L	= @"btn_leftarrow.png";
static	NSString	*ImageName_R	= @"btn_rightarrow.png";


@interface WHSlideV (private)
@property (nonatomic,assign) NSString	*imageName;
- (NSArray*) listAlbum;
@end

@implementation WHSlideV


@synthesize parentView;
@synthesize currentIndex;

- (id)initWithFrame:(CGRect)frame{
	if((self = [super initWithFrame:frame])){
		currentIndex = -1;
		self.alpha					= 0.0f;
		self.backgroundColor		= [UIColor clearColor];
		self.layer.masksToBounds	= YES;
		self.layer.cornerRadius		= 8.0f;
		self.startPoint				= CGPointZero;
		self.endPoint				= CGPointMake(0,self.frame.size.height);
		
		CGFloat tmpcomponents[8] = {
			0.326, 0.455, 0.134, 0.5,
			0.026, 0.055, 0.034, 1.0
		};
		NSMutableArray* array = [NSMutableArray array];
		for(int i=0;i<8;i++)		[array addObject:[NSNumber numberWithFloat:tmpcomponents[i]]];
		self.components	= array;
		
		
		imageView	= [UIImageView frame:CGRectMake(0,0,796,568) imageName:nil];
		imageView.center			= self.center;
		imageView.contentMode		= UIViewContentModeScaleAspectFit;
		[self addSubview:imageView];
		
		buttonClose	= [UIButton point:CGPointMake(24,24) imageName:ImageName_X delegate:self tag:0];
		buttonL		= [UIButton point:CGPointMake(self.center.x -430,self.frame.size.height-32) imageName:ImageName_L delegate:self tag:1];
		buttonR		= [UIButton point:CGPointMake(self.center.x +430,self.frame.size.height-32) imageName:ImageName_R delegate:self tag:2];
		
		[self addSubview:buttonClose];
		[self addSubview:buttonL];
		[self addSubview:buttonR];
		
		self.currentIndex = 0;
	}
	return self;
}

- (void) dealloc{
	safe_release(imageView);
	[super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setCurrentIndex:(NSInteger)_index{
	if(currentIndex == _index)	return;
	
	if(_index < 0){
		currentIndex = [[self listAlbum]count]-1;
	}else if(_index == [[self listAlbum]count]){
		currentIndex = 0;
	}else {
		currentIndex = _index;
	}

	self.imageName = [[self listAlbum]objectAtIndex:currentIndex];
}

- (void) show{
	if(!self.superview){
		[parentView addSubview:self];
		[self animation:@"show" alpha:1.0f time:0.3f delegate:self];
	}
}

- (void) hide{
	[self animation:@"hide" alpha:0.0f time:0.3f delegate:self];
}

- (void) buttonAction:(UIButton*)_sender{
	if(_sender == buttonClose){
		[self hide];
	}else if(_sender == buttonL){
		self.currentIndex--;
	}else if(_sender == buttonR){
		self.currentIndex++;
	}
}

- (void) startAnimation:(NSString*)_animationID{
	if([_animationID isEqualToString:@"show"]){
	}
}

- (void) endAnimation:(NSString*)_animationID{
	if([_animationID isEqualToString:@"hide"]){
		[self removeFromSuperview];
	}
}

- (void) setImageName:(NSString *)_imageName{
	imageView.image = [UIImage imageNamed:_imageName];
}

- (NSArray*) listAlbum{
	NSMutableArray* list = [NSMutableArray array];
	for(int i=0;i<SLIDECOUNT;i++){
		NSString* tmpimageName = [NSString stringWithFormat:@"album_%03d.png",i];
		[list addObject:tmpimageName];
	}
	return list;
}



@end