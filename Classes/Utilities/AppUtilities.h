#import <Foundation/Foundation.h>
#import "UIGradationButton.h"


@interface UIFont (forApp)
+ (UIFont*) hiraginoW6:(CGFloat)_size;
+ (UIFont*) hiraginoW3:(CGFloat)_size;
+ (UIFont*) appFontJP:(CGFloat)_size;
+ (UIFont*) appFontEN:(CGFloat)_size;
@end

@interface UIGradationButton (forApp)
+ (UIGradationButton*) frame:(CGRect)_frame title:(NSString *)_title delegate:(id)_delegate tag:(NSInteger)tag_ font:(UIFont*)_font style:(UIGradationStyle)_style;
@end

@interface UIButton (forApp)
+ (UIButton*) Tabpoint:(CGPoint)_point title:(NSString*)_title imageName:(NSString*)_imageName delegate:(id)_delegate tag:(NSInteger)tag_ jp:(BOOL)_jp;
@end

@interface UINavigationController (forApp)
- (BOOL) isIncludeClass:(Class)_class;
- (UIViewController*) getVC:(Class)_class;
@end
