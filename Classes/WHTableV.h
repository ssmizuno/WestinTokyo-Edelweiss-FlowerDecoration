#import <UIKit/UIKit.h>



@protocol WHTableVDelegate;

@interface WHTableV : UITableView 
<UITableViewDelegate,UITableViewDataSource>{
	
	id<WHTableVDelegate>	controller;
	NSArray	*items;
	NSArray	*checkItems;
}

@property (nonatomic, assign) id<WHTableVDelegate>	controller;
@property (nonatomic, assign) NSArray	*items;
@property (nonatomic, assign) NSArray	*checkItems;

@end



@protocol WHTableVDelegate<NSObject>
- (void) inversion:(UIView*)_sender index:(NSIndexPath*)_indexPath;
@end