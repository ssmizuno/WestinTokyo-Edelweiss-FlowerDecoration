#import <Foundation/Foundation.h>
#import "WHContentView.h"
#import "WHDressView.h"


@interface WHBouquetConfirmV : WHContentView {
	WHDressView	*dressViewW;
	WHDressView	*dressViewE;
	
	UILabel		*labelWedding;
	UILabel		*labelEvening;
	UILabel		*labelWeddingPrice;
	UILabel		*labelEveningPrice;
}
@property (nonatomic) BOOL existEvening;
@property (nonatomic, assign) WHItem	*itemWDress;
@property (nonatomic, assign) WHItem	*itemWBouquet;
@property (nonatomic, assign) WHItem	*itemEDress;
@property (nonatomic, assign) WHItem	*itemEBouquet;


@end
