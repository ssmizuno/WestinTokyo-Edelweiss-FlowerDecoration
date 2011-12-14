#import <UIKit/UIKit.h>
#import "WHItem.h"

@interface WHCell : UITableViewCell {
	
@private
	BOOL		empty;
	UIImageView	*imageBox;
	UIImageView	*imageCheck;
	UILabel		*labelName;
	UILabel		*labelPrice;
	UIImageView	*imageLine;
	UIImageView	*imagePlan;
}

@property (nonatomic, assign) NSIndexPath	*indexPath;
@property (nonatomic, assign) WHItem	*item;
@property (nonatomic) BOOL	check;

- (void) addImage:(NSString*)_imageName;
//- (void) removeImage;
@end