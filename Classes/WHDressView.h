#import <Foundation/Foundation.h>
#import "WHItem.h"

@interface WHDressView : UIView {
	
	UIViewController	*controller;
	UIImageView			*imageDress;
	UIImageView			*imageBouquet;
	UIButton			*buttonBouquet;
	UIImageView			*imageBigBouquet;
}
@property (nonatomic, assign) UIViewController *controller;
@property (nonatomic, assign) WHItem	*itemDress;
@property (nonatomic, assign) WHItem	*itemBouquet;
@property (nonatomic) BOOL	showBackGround;	//default is YES;

@end