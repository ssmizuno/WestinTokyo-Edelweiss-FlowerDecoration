#import "WHItem.h"


@implementation WHItem

@synthesize	index;
@synthesize	file;
@synthesize	name;
@synthesize	thumb;
@synthesize	price;

- (void) dealloc{
	safe_release(file);
	safe_release(name);
	safe_release(thumb);
	safe_release(price);
	[super dealloc];
}


+ (WHItem*) makeItem:(NSInteger)_index file:(NSString*)_fileName item:(NSString*)_itemName price:(NSString*)_price{
	return [self makeItem:_index file:_fileName thumbnail:@"" item:_itemName price:_price];
}
+ (WHItem*) makeItem:(NSInteger)_index file:(NSString*)_fileName thumbnail:(NSString*)_thumbnail item:(NSString*)_itemName price:(NSString*)_price{
	WHItem* item = [[[WHItem alloc]init]autorelease];
	item.index	= _index;
	item.file	= _fileName;
	item.name	= _itemName;
	item.thumb	= _thumbnail;
	item.price	= _price;
	return item;
}

- (NSString*)description{
	return [NSString stringWithFormat:@"%d, %@, %@",index,name,price];
}

@end