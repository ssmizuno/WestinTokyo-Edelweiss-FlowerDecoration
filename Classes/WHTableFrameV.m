#import "WHTableFrameV.h"


static int Column	= 3;


@implementation WHTableFrameV

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
		NSInteger heightThumbnail	= widthThumbnail*5/4;
		
		CGPoint point	= CGPointMake(widthThumbnail/2+ widthThumbnail*indexColumn, heightThumbnail/2 +heightThumbnail*indexRow);
		
		WHThumbnail* thumbnail	= [[[WHThumbnail alloc]initWithFrame:CGRectMake(0,0,widthThumbnail,heightThumbnail)]autorelease];
		thumbnail.delegate	= self;
		thumbnail.center	= point;
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

- (void) buttonAction:(WHThumbnail*)_thumbnailView{
	NSIndexPath* indexPath	= [NSIndexPath indexPathForRow:_thumbnailView.tag inSection:0];
	if([controller respondsToSelector:@selector(inversion:index:)]){
		[controller performSelector:@selector(inversion:index:) withObject:self withObject:indexPath];
	}
	
	_thumbnailView.check	= [[checkItems objectAtIndex:indexPath.row] boolValue];
	for(UIView* subview in self.subviews){
		
		if([subview isMemberOfClass:[WHThumbnail class]]){
			WHThumbnail* thumbnailView = (WHThumbnail*)subview;
			if(thumbnailView != _thumbnailView){
				thumbnailView.check = NO;
			}
		}
	}
}


@end