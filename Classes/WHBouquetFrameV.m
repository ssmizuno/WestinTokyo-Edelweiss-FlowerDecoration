#import "WHBouquetFrameV.h"


static int Column	= 3;


@implementation WHBouquetFrameV

@synthesize controller;
@synthesize items;
@synthesize checkItems;


- (id) initWithFrame:(CGRect)frame{
	if((self = [super initWithFrame:frame])){
		self.showsHorizontalScrollIndicator	= NO;
		self.showsVerticalScrollIndicator	= NO;
	}
	return self;
}

#pragma mark -
#pragma mark setter

- (void) setItems:(NSArray *)_items{
	items = _items;
	
	for(UIView* subview in self.subviews){
		[subview removeFromSuperview];
		subview = nil;
	}
	
	
	CGFloat topspace	= 0.0f;
	CGFloat space		= 0.0f;
	CGFloat bottomspace	= 10.0f;
	
	int i=0;
	
	for(WHItem* item in items){
		int indexColumn	= i%Column;
		int indexRow	= i/Column;
		
		NSInteger widthThumbnail	= self.frame.size.width/Column;
		NSInteger heightThumbnail	= widthThumbnail*19/15+40;
		CGRect frameThumbnail	= CGRectMake(widthThumbnail*indexColumn,heightThumbnail*indexRow,widthThumbnail,heightThumbnail);
		
		WHBouquetThumbnail* thumbnail	= [[[WHBouquetThumbnail alloc]initWithFrame:frameThumbnail]autorelease];
		thumbnail.delegate	= self;
		thumbnail.item		= item;
		thumbnail.tag		= i;
		[self addSubview:thumbnail];
		self.contentSize = CGSizeMake(self.frame.size.width, topspace + (i/Column*(thumbnail.frame.size.height + space)) +thumbnail.frame.size.height +bottomspace);
		i++;
	}
}

- (void) setCheckItems:(NSArray *)_checkItems{
	checkItems = _checkItems;
}

#pragma mark -
#pragma mark cutomized

- (void) buttonAction:(WHBouquetThumbnail*)_thumbnailView{
	NSIndexPath* indexPath	= [NSIndexPath indexPathForRow:_thumbnailView.tag inSection:0];
	if([controller respondsToSelector:@selector(inversion:index:)]){
		[controller performSelector:@selector(inversion:index:) withObject:self withObject:indexPath];
	}
	
	_thumbnailView.check	= [[checkItems objectAtIndex:indexPath.row] boolValue];
	for(UIView* subview in self.subviews){
		if([subview isMemberOfClass:[WHBouquetThumbnail class]]){
			WHBouquetThumbnail* thumbnailView = (WHBouquetThumbnail*)subview;
			if(thumbnailView != _thumbnailView){
				thumbnailView.check = NO;
			}
		}
	}
}


@end