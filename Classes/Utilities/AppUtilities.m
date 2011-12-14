#import "AppUtilities.h"


@implementation UIFont (forApp)
+ (UIFont*) hiraginoW6:(CGFloat)_size{
	return [UIFont fontWithName:@"HiraKakuProN-W6" size:_size];
}
+ (UIFont*) hiraginoW3:(CGFloat)_size{
	return [UIFont fontWithName:@"HiraKakuProN-W3" size:_size];
}
+ (UIFont*) appFontJP:(CGFloat)_size{
	return [UIFont fontWithName:@"AppleGothic" size:_size];
}	
+ (UIFont*) appFontEN:(CGFloat)_size{
	return [UIFont fontWithName:@"Georgia-Italic" size:_size];
}
@end

@implementation UIGradationButton (forApp)
+ (UIGradationButton*) frame:(CGRect)_frame title:(NSString *)_title delegate:(id)_delegate tag:(NSInteger)tag_ font:(UIFont*)_font style:(UIGradationStyle)_style{
	UIGradationButton* button = [[UIGradationButton alloc] initWithFrame:_frame];
	button.frame	= _frame;
	button.tag		= tag_;
	button.title	= _title;
	button.style	= _style;
	button.font		= _font;
	[button addTarget:_delegate action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
	button.titleLabel.shadowOffset	= CGSizeMake(2.0f, 2.0f);
	button.titleLabel.shadowColor	= [UIColor blackColor];
	[button titleRectForContentRect:button.frame];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor colorWithWhite:1.0 alpha:0.5] forState:UIControlStateHighlighted];
	button.titleEdgeInsets = UIEdgeInsetsMake(0.0, 4.0, 0.0, 0.0);
	return button;
}
@end

@implementation UIButton (forApp)

+ (UIButton*) Tabpoint:(CGPoint)_point title:(NSString*)_title imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)tag_ jp:(BOOL)_jp{
	
	UIImage* image = [UIImage imageNamed:_imageName];
	CGSize imageSize	= image.size;
	UIButton* button	= [UIButton buttonWithType:UIButtonTypeCustom];
	button.frame		= CGRectMake(0,0,imageSize.width,imageSize.height);
	button.center		= _point;
	button.tag			= tag_;
	[button addTarget:_delegate action:@selector(tabAction:) forControlEvents:UIControlEventTouchDown];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	button.adjustsImageWhenHighlighted	= NO;
	button.font	= (_jp)? [UIFont appFontJP:14] : [UIFont appFontEN:16];
	[button titleRectForContentRect:button.frame];
	[button setTitle:_title forState:UIControlStateNormal];
	[button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	button.titleEdgeInsets = UIEdgeInsetsMake(2.0, 4.0, 0.0, 0.0);
	return button;
}
@end




@implementation UINavigationController (forApp)
- (BOOL) isIncludeClass:(Class)_class{
	return ([self getVC:_class] != nil);
}

- (UIViewController*) getVC:(Class)_class{
	for(UIViewController* vc in self.viewControllers){
		if([vc isMemberOfClass:_class])	return vc;
	}
	return nil;
}

@end