#import "UIView+Addition.h"


@implementation UIView (CreateImage)
- (UIImage*) createUIImage{
	UIGraphicsBeginImageContext(CGSizeMake(self.bounds.size.width, self.bounds.size.height));
	CGContextScaleCTM(UIGraphicsGetCurrentContext(), 1.0f, 1.0f);
	[self.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage* viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return viewImage;
}
@end


@implementation UIView (Animation)

- (void) animation:(NSString*)_name alpha:(CGFloat)_alpha time:(NSTimeInterval)_time delegate:(id)_delegate{
	
	[UIView beginAnimations:_name context:nil];
	[UIView setAnimationDuration:_time];
	[UIView setAnimationCurve:UIViewAnimationCurveLinear];
	[UIView setAnimationDelegate:_delegate];
	[UIView setAnimationWillStartSelector:@selector(startAnimation:)];
	[UIView setAnimationDidStopSelector:@selector(endAnimation:)];	
	self.alpha = _alpha;
	[UIView commitAnimations];
}

- (void) animation:(NSString*)_name frame:(CGRect)_frame time:(NSTimeInterval)_time delegate:(id)_delegate{
	
	[UIView beginAnimations:_name context:nil];
	[UIView setAnimationDuration:_time];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
	[UIView setAnimationDelegate:_delegate];
	[UIView setAnimationWillStartSelector:@selector(startAnimation:)];
	[UIView setAnimationDidStopSelector:@selector(endAnimation:)];	
	self.frame = _frame;
	[UIView commitAnimations];
}

- (void) animation:(NSString*)_name center:(CGPoint)_center time:(NSTimeInterval)_time delegate:(id)_delegate{
	
	[UIView beginAnimations:_name context:nil];
	[UIView setAnimationDuration:_time];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
	[UIView setAnimationDelegate:_delegate];
	[UIView setAnimationWillStartSelector:@selector(startAnimation:)];
	[UIView setAnimationDidStopSelector:@selector(endAnimation:)];	
	self.center = _center;
	[UIView commitAnimations];
}
@end


@implementation UIView (Subview)
- (BOOL) existInSubviews:(Class)_class{
	return ([self getSubview:_class] != nil);
}
- (UIView*) getSubview:(Class)_class{
	UIView* view;
	for(UIView* subview in self.subviews){
		if([subview isKindOfClass:_class]){
			view = subview;break;
		}
	}
	return view;
}
- (BOOL) removeSubviewFromClass:(Class)_class nilFlag:(BOOL)_nil{
	BOOL success = NO;
	for (UIView* subview in self.subviews){
		if([subview isKindOfClass:_class]){
			[subview removeFromSuperview];
			success = YES;
			if(_nil)subview = nil;
		}
	}
	return success;
}
- (BOOL) removeSubviewFromTagIndex:(NSInteger)_tagIndex nilFlag:(BOOL)_nil{
	BOOL success = NO;
	for (UIView* subview in self.subviews){
		if(subview.tag == _tagIndex){
			[subview removeFromSuperview];
			success = YES;
			if(_nil)subview = nil;
		}
	}
	return success;
}

@end


@implementation UIView (init)
+ (UIView*) frame:(CGRect)_frame backgroundColor:(UIColor*)_backgroundColor alpha:(CGFloat)_alpha{
	
	UIView* view			= [[UIView alloc]init];
	view.frame				= _frame;
	view.backgroundColor	= _backgroundColor;
	view.alpha				= _alpha;
	return view;
}
@end

@implementation UILabel (init)

+ (UILabel*) frame:(CGRect)_frame text:(NSString*)_text color:(UIColor*)_color font:(UIFont*)_font{
	
	UILabel* label			= [[UILabel alloc]initWithFrame:_frame];
	label.text				= _text;
	label.textColor			= _color;
	label.textAlignment		= UITextAlignmentCenter;
	label.backgroundColor	= [UIColor clearColor];
	label.font				= _font;
	label.minimumFontSize	= 16;
	return label;
}
+ (UILabel*) point:(CGPoint)_point text:(NSString*)_text color:(UIColor*)_color font:(UIFont*)_font{
	
	CGSize size = [_text sizeWithFont:_font];
	UILabel* label			= [[UILabel alloc]initWithFrame:CGRectMake(0,0,size.width,size.height)];
	label.center			= _point;
	label.text				= _text;
	label.textColor			= _color;
	label.textAlignment		= UITextAlignmentCenter;
	label.backgroundColor	= [UIColor clearColor];
	label.font				= _font;
	label.minimumFontSize	= 16;
	return label;
}
@end

@implementation UIToolbar (init)

+ (UIToolbar*) frame:(CGRect)_frame items:(NSArray*)_items{
	UIToolbar* toolBar			= [[UIToolbar alloc]initWithFrame:_frame];
	toolBar.items				= _items;
	toolBar.barStyle			= UIBarStyleBlack;
	toolBar.translucent			= NO;
	toolBar.autoresizingMask	= UIViewAutoresizingFlexibleWidth;
	return toolBar;
}
@end

@implementation UINavigationBar (init)

+ (UINavigationBar*) frame:(CGRect)_frame items:(NSArray*)_items{
	UINavigationBar* navBar	= [[UINavigationBar alloc]initWithFrame:_frame];
	navBar.items			= _items;
	navBar.barStyle			= UIBarStyleBlack;
	navBar.translucent		= NO;
	navBar.autoresizingMask	= UIViewAutoresizingFlexibleWidth;
	return navBar;
}
@end

@implementation UIImageView (init)

+ (UIImageView*) frame:(CGRect)_frame imageName:(NSString*)_imageName{
	UIImageView* imageView	= [[UIImageView alloc]initWithFrame:_frame]; 
	imageView.image			= [UIImage imageNamed:_imageName];	
	return imageView;
}

+ (UIImageView*) frame:(CGRect)_frame image:(UIImage*)_image{
	UIImageView* imageView	= [[UIImageView alloc]initWithFrame:_frame]; 
	imageView.image			= _image;	
	return imageView;
}

+ (UIImageView*) point:(CGPoint)_point imageName:(NSString*)_imageName{
	UIImage* image = [UIImage imageNamed:_imageName];
	CGSize imageSize	= (image == nil)? CGSizeZero : image.size;
	
	UIImageView* imageView	= [[UIImageView alloc]initWithFrame:CGRectMake(0,0,imageSize.width,imageSize.height)];
	imageView.center		= _point;
	imageView.image			= image;
	return imageView;
}

+ (UIImageView*) point:(CGPoint)_point image:(UIImage*)_image{
	CGSize imageSize	= _image.size;
	
	UIImageView* imageView	= [[UIImageView alloc]initWithFrame:CGRectMake(0,0,imageSize.width,imageSize.height)]; 
	imageView.center		= _point;
	imageView.image			= _image;
	return imageView;
}
@end

@implementation UIButton (init)

+ (UIButton*) point:(CGPoint)_point imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)_tag{
	
	UIImage* image = [UIImage imageNamed:_imageName];
	CGSize imageSize	= image.size;
	UIButton* button	= [UIButton buttonWithType:UIButtonTypeCustom];
	button.frame		= CGRectMake(0,0,imageSize.width,imageSize.height);
	button.center		= _point;
	button.tag			= _tag;
	[button addTarget:_delegate action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	return button;
}

+ (UIButton*) point:(CGPoint)_point image:(UIImage*)_image delegate:(id)_delegate tag:(NSInteger)_tag{
	
	CGSize imageSize	= _image.size;
	UIButton* button	= [UIButton buttonWithType:UIButtonTypeCustom];
	button.frame		= CGRectMake(0,0,imageSize.width,imageSize.height);
	button.center		= _point;
	button.tag			= _tag;
	[button addTarget:_delegate action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
	[button setBackgroundImage:_image forState:UIControlStateNormal];
	return button;
}

+ (UIButton*) frame:(CGRect)_frame imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)_tag{
	UIImage* image = [UIImage imageNamed:_imageName];
	CGSize imageSize	= image.size;
	UIButton* button	= [UIButton buttonWithType:UIButtonTypeCustom];
	button.frame		= CGRectMake(_frame.origin.x,_frame.origin.y,imageSize.width,imageSize.height);
	button.tag			= _tag;
	[button addTarget:_delegate action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	return button;
}

+ (UIButton*) Tabpoint:(CGPoint)_point imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)_tag{
	
	UIImage* image = [UIImage imageNamed:_imageName];
	CGSize imageSize	= image.size;
	UIButton* button	= [UIButton buttonWithType:UIButtonTypeCustom];
	button.frame		= CGRectMake(0,0,imageSize.width,imageSize.height);
	button.center		= _point;
	button.tag			= _tag;
	[button addTarget:_delegate action:@selector(buttonAction:) forControlEvents:UIControlEventTouchDown];
	[button setImage:image forState:UIControlStateNormal];
	button.adjustsImageWhenHighlighted	= NO;
	return button;
}

+ (UIButton*) RoundRectFrame:(CGRect)_frame title:(NSString*)_title delegate:(id)_delegate tag:(NSInteger)_tag{
	UIButton* button	= [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame		= _frame;
	button.tag			= _tag;
	[button setTitle:_title forState:UIControlStateNormal];
	[button addTarget:_delegate action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
	return button;
}

+ (UIButton*) TabRRframe:(CGRect)_frame title:(NSString*)_title delegate:(id)_delegate tag:(NSInteger)_tag{
	
	UIButton* button	= [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame		= _frame;
	button.tag			= _tag;
	[button addTarget:_delegate action:@selector(buttonAction:) forControlEvents:UIControlEventTouchDown];
	[button setTitle:_title forState:UIControlStateNormal];
	button.adjustsImageWhenHighlighted	= NO;
	return button;
}
@end

@implementation UISwitch (init)

+ (UISwitch*) frame:(CGRect)_frame onOff:(BOOL)_flag target:(id)_delegate tag:(NSInteger)_tag{
	UISwitch* onOffSwitch = [[UISwitch alloc]initWithFrame:_frame];
	onOffSwitch.on			= _flag;
	onOffSwitch.tag			= _tag;
	[onOffSwitch addTarget:_delegate action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
	return onOffSwitch;
}
@end

@implementation UITextField (init)

+ (UITextField*) frame:(CGRect)_frame text:(NSString*)_text delegate:(id)_delegate{
	UITextField* textField				= [[UITextField alloc]initWithFrame:_frame];
	textField.text						= _text;
	textField.delegate					= _delegate;
	textField.borderStyle				= UITextBorderStyleNone;
	textField.autocapitalizationType	= UITextAutocapitalizationTypeNone;
	textField.clearsOnBeginEditing		= NO;
	return textField;
}
@end

@implementation UITextView (init)

+ (UITextView*) frame:(CGRect)_frame text:(NSString*)_text delegate:(id)_delegate{
	UITextView* textView				= [[UITextView alloc]initWithFrame:_frame];
	textView.text						= _text;
	textView.delegate					= _delegate;
	return textView;
}
@end

@implementation UISegmentedControl (init)

+ (UISegmentedControl*) frame:(CGRect)_frame items:(NSArray*)_items select:(NSInteger)_select delegate:(id)_delegate{
	UISegmentedControl* segment		= [[UISegmentedControl alloc]initWithItems:_items];
	segment.frame					= _frame;
	segment.selectedSegmentIndex	= _select;
	[segment addTarget:_delegate action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
	return segment;
}
@end

@implementation UIPickerView (init)

+ (UIPickerView*) frame:(CGRect)_frame select:(NSInteger)_select delegate:(id)_delegate dataSource:(id)_dataSource{
	UIPickerView* picker			= [[UIPickerView alloc]initWithFrame:_frame];
	picker.delegate					= _delegate;
	picker.dataSource				= _dataSource;
	picker.showsSelectionIndicator	= YES;
	[picker selectRow:_select inComponent:0 animated:NO];
	return picker;
}
@end

@implementation UITableView (init)

+ (UITableView*) frame:(CGRect)_frame delegate:(id)_delegate dataSource:(id)_dataSource{
	UITableView* tableView = [[UITableView alloc]initWithFrame:_frame style:UITableViewStylePlain];
	tableView.delegate		= _delegate;
	tableView.dataSource	= _dataSource;
	return tableView;
}
@end

@implementation UIActivityIndicatorView (init)

+ (UIActivityIndicatorView*) frame:(CGRect)_frame style:(UIActivityIndicatorViewStyle)_style{
	UIActivityIndicatorView* indicator = [[UIActivityIndicatorView alloc]initWithFrame:_frame];
	indicator.activityIndicatorViewStyle	= _style;
	return indicator;
}
+ (UIActivityIndicatorView*) point:(CGPoint)_point style:(UIActivityIndicatorViewStyle)_style{
	UIActivityIndicatorView* indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:_style];
	indicator.center = _point;
	return indicator;
}
@end