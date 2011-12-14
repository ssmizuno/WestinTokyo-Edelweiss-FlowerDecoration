#import <Foundation/Foundation.h>


@interface WHItem : NSObject {
	NSInteger	index;
	NSString	*file;
	NSString	*name;
	NSString	*thumb;
	NSString	*price;
}
@property (nonatomic)	NSInteger	index;
@property (nonatomic, retain)	NSString	*file;
@property (nonatomic, retain)	NSString	*name;
@property (nonatomic, retain)	NSString	*thumb;
@property (nonatomic, retain)	NSString	*price;

+ (WHItem*) makeItem:(NSInteger)_index file:(NSString*)_fileName item:(NSString*)_itemName price:(NSString*)_price;
+ (WHItem*) makeItem:(NSInteger)_index file:(NSString*)_fileName thumbnail:(NSString*)_thumbnail item:(NSString*)_itemName price:(NSString*)_price;

@end