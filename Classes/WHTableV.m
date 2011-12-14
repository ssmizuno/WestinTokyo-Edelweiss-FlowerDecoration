#import "WHTableV.h"
#import "WHCell.h"



@implementation WHTableV



@synthesize controller;
@synthesize items;
@synthesize checkItems;

#pragma mark -
#pragma mark Initialization


- (id)initWithFrame:(CGRect)frame{
    if((self = [super initWithFrame:frame style:UITableViewStylePlain])){
		self.dataSource			= self;
		self.delegate			= self;
		self.rowHeight			= 58.0f;
		self.backgroundColor	= [UIColor clearColor];
		self.separatorStyle		= UITableViewCellSeparatorStyleSingleLine;
		self.separatorColor		= [UIColor clearColor];
		self.showsVerticalScrollIndicator	= NO;
    }
    return self;
}

- (void)dealloc {
    [super dealloc];
}


#pragma mark -
#pragma mark setter

- (void) setItems:(NSArray *)_items{
	items = _items;
	[self reloadData];
}

- (void) setCheckItems:(NSArray *)_checkItems{
	checkItems = _checkItems;
	[self reloadData];
}

#pragma mark -
#pragma mark customize

- (void) deselect: (id) sender{
	[self deselectRowAtIndexPath:[self indexPathForSelectedRow] animated:YES];
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [items count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
	
	NSString* name = [[items objectAtIndex:indexPath.row] name];
	if([name isEqualToString:@""]){
		return 0.0f;
	}
	return 58.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString* identifier = @"CellIdentifier";
    WHCell *cell = (WHCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
	if (cell == nil) {
		cell = [[[WHCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier] autorelease];
	}
	
	for(UIView *subview in cell.contentView.subviews){
		if(subview.tag != 100 && subview.tag != 101 && subview.tag != 104){
			[subview removeFromSuperview];
		}
	}
	cell.indexPath	= indexPath;
	cell.item		= [items objectAtIndex:indexPath.row];
	cell.check		= [[checkItems objectAtIndex:indexPath.row] boolValue];
	cell.alpha		= self.alpha;
	if(self.tag == 10){
		NSString* imageName	= [NSString stringWithFormat:@"cell_%02d.png",indexPath.row];
		[cell addImage:imageName];
	}
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	
	if([controller respondsToSelector:@selector(inversion:index:)]){
		[controller performSelector:@selector(inversion:index:) withObject:self withObject:indexPath];
	}
	
	WHCell* cell = (WHCell*)[tableView cellForRowAtIndexPath:indexPath];
	cell.check	= [[checkItems objectAtIndex:indexPath.row] boolValue];
	
    [self performSelector:@selector(deselect:) withObject:nil afterDelay:0.2f];
	
	NSArray* visibleCells = [tableView visibleCells];
	for(WHCell* subview in visibleCells){
		if(subview != cell){
			subview.check = NO;
		}
	}
}



@end