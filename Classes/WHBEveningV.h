#import <Foundation/Foundation.h>
#import "WHContentView.h"
#import "WHTableFrameV.h"
#import "WHBouquetFrameV.h"
#import "WHDressView.h"


@class WHTableFrameV;
@class WHBouquetFrameV;

@interface WHBEveningV : WHContentView {
	NSInteger	currentTabIndex;
	UIButton	*tabButton0;
	UIButton	*tabButton1;
	
	WHTableFrameV	*tableViewforDress;
	WHBouquetFrameV	*tableViewforBouquet;
	WHDressView		*dressView;
}

@property (nonatomic) NSInteger	currentTabIndex;
@property (nonatomic, assign) NSArray	*itemsForDress;
@property (nonatomic, assign) NSArray	*itemsForBouquet;
@property (nonatomic, assign) NSArray	*checkItemsForDress;
@property (nonatomic, assign) NSArray	*checkItemsForBouquet;
@property (nonatomic, assign) WHItem	*itemDress;
@property (nonatomic, assign) WHItem	*itemBouquet;



@end