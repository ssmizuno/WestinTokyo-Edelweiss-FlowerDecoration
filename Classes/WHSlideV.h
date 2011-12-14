#import <Foundation/Foundation.h>
#import "UIGradationView.h"

@interface WHSlideV : UIGradationView {
	
	UIView		*parentView;
@private
	NSInteger	currentIndex;
	UIImageView	*imageView;
	UIButton	*buttonClose;
	UIButton	*buttonL;
	UIButton	*buttonR;
}

@property (nonatomic, assign)	UIView	*parentView;
@property (nonatomic)	NSInteger	currentIndex;

- (void) show;
- (void) hide;
@end