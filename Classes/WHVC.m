#import "WHVC.h"
#import "WHTopVC.h"
#import "WHRoomVC.h"
#import "WHPlanVC.h"
#import "WHMVC.h"
#import "WHGVC.h"
#import "WHBWeddingVC.h"
#import "WHBEveningVC.h"
#import "WHBouquetConfirmVC.h"
#import "WHPreviewVC.h"
#import "UIGradationButton.h"

static	NSString	*ImageName_Bg		= @"bg.png";
static	NSString	*ImageName_Title	= @"img_title.png";
static	NSString	*ImageName_Logo		= @"img_logo.png";
static	NSString	*ImageName_SLogo	= @"img_logo_s.png";
static	NSString	*StrBackButton		= @"Back";
static	NSString	*StrEveningButton	= @"Evening";



@interface WHVC (navigation)
- (void) navigationForward:(id)sender;
- (void) push:(id)sender;
- (void) pop:(id)sender;
- (void) popToRootVC:(id)sender;
@end


@interface WHVC (animation)
- (void) alphaAnimation:(UIView*)targetView animationID:(NSString*)_animationID willShow:(BOOL)_showorhide;
- (void) showAnimation;
- (void) showAnimationExecute;
- (void) hideAnimation;
- (void) hideAnimationExecute;
@end


int TagRightButton = 99;
int TagEveningButton = 999;

@implementation WHVC



@synthesize contentView;
@synthesize showBackButton;
@synthesize showRightButton;
@synthesize showEveningButton;
@synthesize strRightButton;



- (id)init{
	if((self = [super init])){
		appDelegate		= (AppDelegate*)[[UIApplication sharedApplication]delegate];
		isLoaded		= NO;
	}
	return self;
}

- (void) loadView{
	[super loadView];
	
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:ImageName_Bg]];
	
	imageViewTitle = [UIImageView point:CGPointMake(512,24) imageName:ImageName_Title];
	[self.view addSubview:imageViewTitle];
	
	buttonTopBack = [UIGradationButton frame:CGRectMake(10,10,70,32) title:StrBackButton delegate:contentView tag:0 font:[UIFont appFontEN:20] style:UIGradationStyleBlack];
	[self.view addSubview:buttonTopBack];
	
	buttonTopRight = [UIGradationButton frame:CGRectMake(908,10,100,32) title:nil delegate:contentView tag:TagRightButton font:[UIFont appFontEN:20] style:UIGradationStyleBlack];
	[self.view addSubview:buttonTopRight];
	
	buttonEvening = [UIGradationButton frame:CGRectMake(768,10,120,32) title:StrEveningButton delegate:contentView tag:TagEveningButton font:[UIFont appFontEN:20] style:UIGradationStyleBlack];
	[self.view addSubview:buttonEvening];
	
	
	UIImageView* imageLogo = [UIImageView point:CGPointMake(512,226) imageName:ImageName_Logo];
	[self.view addSubview:imageLogo];
	UIImageView* imageSLogo = [[UIImageView point:CGPointMake(926,744) imageName:ImageName_SLogo]autorelease];
	[self.view addSubview:imageSLogo];
	
	self.showBackButton		= YES;
	self.showRightButton	= YES;
	self.showEveningButton	= NO;
}

- (void) viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	[self showAnimation];
}

- (void) viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	if((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight)){
		[self showAnimation];
		return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
	}else {
		return NO;
	}
}

- (void)dealloc {
	safe_release(imageViewTitle);
	safe_release(contentView);
    [super dealloc];
}

#pragma mark -
#pragma mark setter
	
- (void) setShowBackButton:(BOOL)_isShow{
	showBackButton = _isShow;
	buttonTopBack.alpha = (showBackButton)? 1.0f : 0.0f;
}

- (void) setShowRightButton:(BOOL)_isShow{
	showRightButton = _isShow;
	buttonTopRight.alpha = (showRightButton)? 1.0f : 0.0f;
}

- (void) setShowEveningButton:(BOOL)_isShow{
	showEveningButton = _isShow;
	buttonEvening.alpha = (showEveningButton)? 1.0f : 0.0f;
}

- (void) setStrRightButton:(NSString *)_str{
	UIGradationButton* button = (UIGradationButton*)buttonTopRight;
	button.title = _str;
}

- (void) setContentView:(WHContentView *)_contentView{
	if(contentView != _contentView){
		[contentView release];
		contentView = [_contentView retain];
	}
	[buttonTopRight addTarget:contentView action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
	[buttonEvening addTarget:contentView action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) buttonAction:(UIButton*)_sender{
	if(_sender == buttonTopBack){
		[self navigationBack:nil];
	}
}

#pragma mark -
#pragma mark NavigationMethod

- (void) moveTo:(WHMenuID)_menuID option:(id)sender{
	if(_menuID == WHMenuTop){
		[self navigationBackToRoot:nil];
	}else if(_menuID == WHMenuRoom){
		[self navigationForward:[[[WHRoomVC alloc]init]autorelease]];
	}else if(_menuID == WHMenuPlan){
		[self navigationForward:[[[WHPlanVC alloc]init]autorelease]];
	}else if(_menuID == WHMenuM){
		[self navigationForward:[[[WHMVC alloc]init]autorelease]];
	}else if(_menuID == WHMenuG){
		[self navigationForward:[[[WHGVC alloc]init]autorelease]];
	}else if(_menuID == WHMenuBouquet){
		[self navigationForward:[[[WHBWeddingVC alloc]init]autorelease]];
	}else if(_menuID == WHMenuBouquet2){
		[self navigationForward:[[[WHBEveningVC alloc]init]autorelease]];
	}else if(_menuID == WHMenuBouquetConfirm){
		[self navigationForward:[[[WHBouquetConfirmVC alloc]init]autorelease]];
	}else if(_menuID == WHMenuPreview){	
		WHPreviewVC* vc = [[[WHPreviewVC alloc]init]autorelease];
		vc.inputID	= sender;
		[self navigationForward:vc];
	}
}

- (void) navigationBack:(id)sender{
	[self hideAnimation];
	if(sender == nil){
		[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(pop:) userInfo:nil repeats:NO];
	}else {
		[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(popToVC:) userInfo:sender repeats:NO];
	}
}

- (void) navigationBackToRoot:(id)sender{
	[self hideAnimation];
	[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(popToRootVC:) userInfo:nil repeats:NO];
}

- (void) navigationForward:(id)sender{
	[self hideAnimation];
	NSDictionary* dic = [NSDictionary dictionaryWithObject:sender forKey:@"Controller"];
	[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(push:) userInfo:dic repeats:NO];
}

- (void) pop:(id)sender{
	[self.navigationController popViewControllerAnimated:NO];
}

- (void) popToRootVC:(id)sender{
	[self.navigationController popToRootViewControllerAnimated:NO];
}

- (void) popToVC:(id)sender{
	NSTimer* timer = (NSTimer*)sender;
	UIViewController* vc = timer.userInfo;
	[self.navigationController popToViewController:vc animated:NO];
}

- (void) push:(id)sender{
	UIViewController* controller = [[(NSTimer*)sender userInfo] objectForKey:@"Controller"];
	[self.navigationController pushViewController:controller animated:NO];
}

#pragma mark -
#pragma mark AnimationMethod

- (void) alphaAnimation:(UIView*)targetView animationID:(NSString*)_animationID willShow:(BOOL)_showorhide{
	if(targetView == nil) return;
	targetView.alpha = !_showorhide;
	[targetView animation:_animationID alpha:_showorhide time:0.5 delegate:self];
}

- (void) showAnimation{
	contentView.alpha		=
	imageViewTitle.alpha	= 0.0f;
	buttonTopBack.alpha		= 0.0f;
	buttonTopRight.alpha	= 0.0f;
	buttonEvening.alpha		= 0.0f;
	[NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(showAnimationExecute) userInfo:nil repeats:NO];
}

- (void) hideAnimation{
	contentView.alpha		=
	imageViewTitle.alpha	= 1.0f;
	if(showBackButton){
		buttonTopBack.alpha = 1.0f;
	}
	if(showRightButton){
		buttonTopRight.alpha = 1.0f;
	}
	if(showEveningButton){
		buttonEvening.alpha = 1.0f;
	}
	[self hideAnimationExecute];
}

- (void) showAnimationExecute{
	[self alphaAnimation:contentView animationID:@"ContentsShow" willShow:YES];
	[self alphaAnimation:imageViewTitle animationID:@"" willShow:YES];
	if(showBackButton)		[self alphaAnimation:buttonTopBack animationID:@"" willShow:YES];
	if(showRightButton)		[self alphaAnimation:buttonTopRight animationID:@"" willShow:YES];
	if(showEveningButton)	[self alphaAnimation:buttonEvening animationID:@"" willShow:YES];
}

- (void) hideAnimationExecute{
	[self alphaAnimation:contentView animationID:@"ContentsHide" willShow:NO];
	[self alphaAnimation:imageViewTitle animationID:@"" willShow:NO];
	if(showBackButton)		[self alphaAnimation:buttonTopBack animationID:@"" willShow:NO];	
	if(showRightButton)		[self alphaAnimation:buttonTopRight animationID:@"" willShow:NO];
	if(showEveningButton)	[self alphaAnimation:buttonEvening animationID:@"" willShow:NO];
}

#pragma mark animationDelegate

- (void) startAnimation:(NSString*)animationID{
	if([animationID isEqualToString:@"ContentsShow"]){
	}else if([animationID isEqualToString:@"ContentsHide"]){
	}
}

- (void) endAnimation:(NSString*)animationID{
	if([animationID isEqualToString:@"ContentsShow"]){
	}else if([animationID isEqualToString:@"ContentsHide"]){
	}
}


@end