#import <Foundation/Foundation.h>
#import "WHVC.h"
#import "AppDelegate.h"
#import "UIGradationView.h"
#import "WHItem.h"

@class WHVC;
@class AppDelegate;

@interface WHContentView : UIView {
	WHVC		*controller;
	AppDelegate	*appDelegate;
}
@property (nonatomic, assign) WHVC			*controller;
@property (nonatomic, assign) AppDelegate	*appDelegate;

- (void) fadeInOut:(UIImageView*)_imageView imageName:(NSString*)_imageName;
@end
