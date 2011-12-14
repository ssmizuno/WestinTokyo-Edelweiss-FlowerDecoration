#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

#define ANIMATION_ADD	@"Add"
#define ANIMATION_REM	@"Rem"


@interface UIView (CreateImage)
- (UIImage*) createUIImage;
@end

@interface UIView (Animation)
- (void) animation:(NSString*)_name alpha:(CGFloat)_alpha time:(NSTimeInterval)_time delegate:(id)_delegate;
- (void) animation:(NSString*)_name frame:(CGRect)_frame time:(NSTimeInterval)_time delegate:(id)_delegate;
- (void) animation:(NSString*)_name center:(CGPoint)_center time:(NSTimeInterval)_time delegate:(id)_delegate;
@end

@interface UIView (Subview)
- (UIView*) getSubview:(Class)_class;
- (BOOL) existInSubviews:(Class)_class;
- (BOOL) removeSubviewFromClass:(Class)_class nilFlag:(BOOL)_nil;
- (BOOL) removeSubviewFromTagIndex:(NSInteger)_tagIndex nilFlag:(BOOL)_nil;
@end

@interface UIView (init)
+ (UIView*) frame:(CGRect)_frame backgroundColor:(UIColor*)_backgroundColor alpha:(CGFloat)_alpha;
@end
@interface UILabel (init)
+ (UILabel*) frame:(CGRect)_frame text:(NSString*)_text color:(UIColor*)_color font:(UIFont*)_font;
+ (UILabel*) point:(CGPoint)_point text:(NSString*)_text color:(UIColor*)_color font:(UIFont*)_font;
@end
@interface UIButton (init)
+ (UIButton*) frame:(CGRect)_frame imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)_tag;
+ (UIButton*) point:(CGPoint)_point image:(UIImage*)_image delegate:(id)_delegate tag:(NSInteger)_tag;
+ (UIButton*) point:(CGPoint)_point imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)_tag;
+ (UIButton*) RoundRectFrame:(CGRect)_frame title:(NSString*)_title delegate:(id)_delegate tag:(NSInteger)_tag;
+ (UIButton*) Tabpoint:(CGPoint)_point imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)_tag;
+ (UIButton*) TabRRframe:(CGRect)_frame title:(NSString*)_title delegate:(id)_delegate tag:(NSInteger)_tag;
@end
@interface UIImageView (init)
+ (UIImageView*) frame:(CGRect)_frame image:(UIImage*)_image;
+ (UIImageView*) frame:(CGRect)_frame imageName:(NSString*)_imageName;
+ (UIImageView*) point:(CGPoint)_point imageName:(NSString*)_imageName;
+ (UIImageView*) point:(CGPoint)_point image:(UIImage*)_image;
@end
@interface UITextField (init)
+ (UITextField*) frame:(CGRect)_frame text:(NSString*)_text delegate:(id)_delegate;
@end
@interface UITextView (init)
+ (UITextView*) frame:(CGRect)_frame text:(NSString*)_text delegate:(id)_delegate;
@end
@interface UIToolbar (init)
+ (UIToolbar*) frame:(CGRect)_frame items:(NSArray*)_items;
@end
@interface UINavigationBar (init)
+ (UINavigationBar*) frame:(CGRect)_frame items:(NSArray*)_items;
@end
@interface UISwitch (init)
+ (UISwitch*) frame:(CGRect)_frame onOff:(BOOL)_flag target:(id)_delegate tag:(NSInteger)_tag;
@end
@interface UITableView (init)
+ (UITableView*) frame:(CGRect)_frame delegate:(id)_delegate dataSource:(id)_dataSource;
@end
@interface UISegmentedControl (init)
+ (UISegmentedControl*) frame:(CGRect)_frame items:(NSArray*)_items select:(NSInteger)_select delegate:(id)_delegate;
@end
@interface UIPickerView (init)
+ (UIPickerView*) frame:(CGRect)_frame select:(NSInteger)_select delegate:(id)_delegate dataSource:(id)_dataSource;
@end
@interface UIActivityIndicatorView (init)
+ (UIActivityIndicatorView*) frame:(CGRect)_frame style:(UIActivityIndicatorViewStyle)_style;
+ (UIActivityIndicatorView*) point:(CGPoint)_point style:(UIActivityIndicatorViewStyle)_style;
@end