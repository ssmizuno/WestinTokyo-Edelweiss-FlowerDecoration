#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "WHContentView.h"


typedef enum {
	WHMenuTop,
	WHMenuRoom,
	WHMenuPlan,
	WHMenuM,
	WHMenuG,
	WHMenuBouquet,
	WHMenuBouquet2,
	WHMenuBouquetConfirm,
	WHMenuPreview
} WHMenuID;


@class WHContentView;
extern int	TagRightButton;
extern int	TagEveningButton;

@interface WHVC : UIViewController {
	
	
	BOOL		isLoaded;
	BOOL		showLogo;
	BOOL		showBackButton;
	BOOL		showRightButton;
	AppDelegate		*appDelegate;
	WHContentView	*contentView;
	
	UIImageView		*imageViewTitle;
	UIButton		*buttonTopBack;
	UIButton		*buttonTopRight;
	UIButton		*buttonEvening;
}
@property (nonatomic) BOOL	showBackButton;
@property (nonatomic) BOOL	showRightButton;
@property (nonatomic) BOOL	showEveningButton;
@property (nonatomic, assign) NSString	*strRightButton;
@property (nonatomic, retain) WHContentView	*contentView;


- (void) moveTo:(WHMenuID)_menuID option:(id)sender;
- (void) navigationBack:(id)sender;
- (void) navigationBackToRoot:(id)sender;



@end