#import <Foundation/Foundation.h>

typedef enum{
	UIGradationStyleBlack = 0,
	UIGradationStyleGold,
} UIGradationStyle;

@interface UIGradationButton : UIButton {
	UIGradationStyle	style;
}
@property (nonatomic, assign) NSString	*title;
@property (nonatomic) UIGradationStyle	style;
@end