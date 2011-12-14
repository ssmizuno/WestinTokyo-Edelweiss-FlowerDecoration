#import <UIKit/UIKit.h>
#import "WHTableFrameV.h"



@interface WHPopOverVC : UIViewController{
	NSInteger			tag;
	UIViewController	*baseController;
	UIScrollView		*scrollView;
	
	WHTableFrameV		*tableView;
	UIPopoverController	*popover;
	NSArray				*itemsForAccessory;
	NSMutableArray		*checkItemsForAccessory;
}
@property (nonatomic) NSInteger	tag;
@property (nonatomic, assign) UIViewController	*baseController;
@property (nonatomic, assign) NSArray	*itemsForAccessory;
@property (nonatomic, assign) NSMutableArray	*checkItemsForAccessory;


- (void) showInView:(UIView*)_inView frame:(CGRect)_frame;


@end