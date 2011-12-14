#import "WHTopV.h"
#import "WHTopVC.h"
#import "WHPreviewVC.h"


static	NSString	*ImageName_Bg				= @"bg_tmp1.png";
static	NSString	*ImageName_InputField		= @"bg_inputfield.png";
static	NSString	*ImageName_Edelweiss_off	= @"btn_edelweiss_off.png";
static	NSString	*ImageName_Edelweiss_on		= @"btn_edelweiss_on.png";
static	NSString	*ImageName_TextArea			= @"bg_textarea.png";

static	NSString	*StrButtonTitle0	= @"Flower Coordinate";
static	NSString	*StrButtonTitle1	= @"Wedding Bouquet";
static	NSString	*StrButtonTitle2	= @"表示する";
static	NSString	*StrAlertMessage	= @"IDが正しくありません";
static	NSString	*StrAlertMessage2	= @"IDを入力してください";
static	NSString	*StrAlertClose		= @"閉じる";


@implementation WHTopV

- (id)init{
	if((self = [super init])){
		
		[[NSNotificationCenter defaultCenter]addObserver:self
												selector:@selector(keyboardHide:)
													name:UIKeyboardWillHideNotification object:nil];
		
		UIImageView* bgtmp1	= [[UIImageView point:CGPointMake(512,465) imageName:ImageName_Bg]autorelease];
		[self addSubview:bgtmp1];
		
		
		bgTextArea	= [UIView frame:CGRectMake(0,0,584,126) backgroundColor:[UIColor clearColor] alpha:1.0f];
		bgTextArea.center	= CGPointMake(self.center.x, 500);
		
		UIImageView* imageTextArea	= [[UIImageView point:CGPointMake(bgTextArea.frame.size.width/2,bgTextArea.frame.size.height/2) imageName:ImageName_TextArea]autorelease];
		UIImageView* bgtextField	= [[UIImageView point:CGPointMake(bgTextArea.frame.size.width/2,76) imageName:ImageName_InputField]autorelease];
		
		[bgTextArea addSubview:imageTextArea];
		[bgTextArea addSubview:bgtextField];
		
		textField		= [UITextField frame:CGRectMake(30,60,bgtextField.image.size.width-100,bgtextField.image.size.height) text:nil delegate:self];
		textField.font	= [UIFont hiraginoW3:22];
		[bgTextArea addSubview:textField];
		
		buttonShow = [[[UIGButton alloc]init]autorelease];
		buttonShow.frame	= CGRectMake(0,0,80,44);
		buttonShow.center	= CGPointMake(524, bgtextField.center.y);
		buttonShow.tag		= 3;
		buttonShow.title	= StrButtonTitle2;
		[buttonShow addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
		[bgTextArea addSubview:buttonShow];
		
		
		UIButton* button0	= [UIGradationButton frame:CGRectMake(222,350,280,54) title:StrButtonTitle0 delegate:self tag:0 font:[UIFont appFontEN:20] style:UIGradationStyleBlack];
		UIButton* button1	= [UIGradationButton frame:CGRectMake(522,350,280,54) title:StrButtonTitle1 delegate:self tag:1 font:[UIFont appFontEN:20] style:UIGradationStyleBlack];
		[self addSubview:button0];
		[self addSubview:button1];
		
		UIImage* imageoff	= [UIImage imageNamed:ImageName_Edelweiss_off];
		UIImage* imageon	= [UIImage imageNamed:ImageName_Edelweiss_on];
		
		CGSize imageSize	= imageoff.size;
		UIButton* button2	= [UIButton buttonWithType:UIButtonTypeCustom];
		button2.frame		= CGRectMake(0,0,imageSize.width,imageSize.height);
		button2.center		= CGPointMake(110,590);
		button2.tag			= 2;
		button2.adjustsImageWhenHighlighted	= NO;
		[button2 addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
		[button2 setBackgroundImage:imageoff forState:UIControlStateNormal];
		[button2 setBackgroundImage:imageon forState:UIControlStateHighlighted];
		[self addSubview:button2];
		
		UIView* tmpbgView	= [[UIView frame:CGRectMake(0,0,self.frame.size.width,self.frame.size.height) backgroundColor:[UIColor blackColor] alpha:0.0f]autorelease];
		tmpbgView.tag		= 999;
		tmpbgView.alpha		= 0.0f;
		[self addSubview:tmpbgView];
		
		[self addSubview:bgTextArea];
		
		slideView = [[WHSlideV alloc]initWithFrame:CGRectMake(0,0,920,612)];
		slideView.center		= CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
		slideView.parentView	= self;
		
	}
	return self;
}

- (void)dealloc {
	safe_release(bgTextArea);
	safe_release(textField);
	safe_release(slideView);
    [super dealloc];
}

#pragma mark -
#pragma mark customize

- (void) showMessage:(NSString*) message{
	UIAlertView* alertView = [[[UIAlertView alloc]initWithTitle:nil
														message:message
													   delegate:nil
											  cancelButtonTitle:StrAlertClose
											  otherButtonTitles:nil]autorelease];
	[alertView show];
}

- (void) buttonAction:(UIButton*)sender{
	
	if(sender.tag == 0){
		[controller moveTo:WHMenuRoom option:nil];
	}else if(sender.tag == 1){
		[appDelegate setZeroForBouquetSimulator];
		[appDelegate setZeroForBouquetSimulator2];
		[controller moveTo:WHMenuBouquet option:nil];
	}else if(sender.tag == 2){
		[slideView show];
	}else if(sender.tag == 3){
		NSString* text = textField.text;
		if(text){
			if(![text isEqualToString:@""]){
				WHPreviewVC* vc = [[[WHPreviewVC alloc]init]autorelease];
				BOOL success	= [vc checkID:text];
				if(success){
					
					[textField resignFirstResponder];
					[self viewWithTag:999].alpha	= 0.0f;
					
					[controller moveTo:WHMenuPreview option:text];
				}else { 
					[self showMessage:StrAlertMessage];
				}
			}else{
				[self showMessage:StrAlertMessage2];
			}
		}else {
			[self showMessage:StrAlertMessage2];
		}
	}
}

- (void) keyboardHide:(id)sender{
	[UIView beginAnimations:@"" context:nil];
	[UIView setAnimationDuration:0.3f];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationWillStartSelector:@selector(startAnimation:)];
	[UIView setAnimationDidStopSelector:@selector(endAnimation:)];	
	[self viewWithTag:999].alpha	= 0.0f;
	bgTextArea.center = CGPointMake(self.center.x, 500);
	[UIView commitAnimations];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)_textField{
	[UIView beginAnimations:@"" context:nil];
	[UIView setAnimationDuration:0.2f];
	[UIView setAnimationCurve:UIViewAnimationCurveLinear];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationWillStartSelector:@selector(startAnimation:)];
	[UIView setAnimationDidStopSelector:@selector(endAnimation:)];	
	[self viewWithTag:999].alpha	= 0.8f;
	bgTextArea.center = CGPointMake(self.center.x, 200);
	[UIView commitAnimations];
	return YES;
}

#pragma mark -
#pragma mark UIResponder

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	[textField resignFirstResponder];
	[self viewWithTag:999].alpha	= 0.0f;
}


@end