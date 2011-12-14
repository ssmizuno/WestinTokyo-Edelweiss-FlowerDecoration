#import "WHCell.h"

static	NSString	*ImageName_CheckBox		= @"img_checkbox.png";
static	NSString	*ImageName_Check		= @"img_check.png";
static	NSString	*ImageName_Line			= @"img_line.png";
static	NSString	*ImageName_BgEven		= @"bg_celleven.png";
static	NSString	*ImageName_BgOdd		= @"bg_cellodd.png";

@implementation WHCell



@synthesize indexPath;
@synthesize item;
@synthesize check;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])){
		empty = NO;
		UIView* selectedBGView			= [[[UIView alloc]initWithFrame:CGRectMake(0,0,480,52)]autorelease];
		selectedBGView.backgroundColor	= [UIColor lightGrayColor];
		selectedBGView.alpha			= 0.2;
		self.selectedBackgroundView		= selectedBGView;
		
		imageBox	= [UIImageView point:CGPointMake(30, 29) imageName:ImageName_CheckBox];
		imageCheck	= [UIImageView point:CGPointMake(30, 29) imageName:ImageName_Check];
		imageLine	= [UIImageView point:CGPointMake(432,29) imageName:ImageName_Line];
		imagePlan	= [UIImageView frame:CGRectMake(0,0,562,58) imageName:nil];
		
		labelName	= [UILabel frame:CGRectMake( 90,14,320,32) text:nil color:[UIColor whiteColor] font:[UIFont appFontJP:14]];
		labelPrice	= [UILabel frame:CGRectMake(440,14,120,32) text:nil color:[UIColor whiteColor] font:[UIFont appFontEN:15]];
		
		labelName.textAlignment		= UITextAlignmentLeft;
		labelPrice.textAlignment	= UITextAlignmentRight;
		
		labelName.shadowColor	= 
		labelPrice.shadowColor	= [UIColor blackColor];
		
		labelName.shadowOffset	= CGSizeMake(1,1);
		labelPrice.shadowOffset	= CGSizeMake(1,1);
		
		imageBox.tag	= 100;
		imageCheck.tag	= 101;
		labelName.tag	= 102;
		labelPrice.tag	= 103;
		imagePlan.tag	= 104;
		
		[self.contentView addSubview:imageLine];
		[self.contentView addSubview:imageBox];
		[self.contentView addSubview:imageCheck];
		[self.contentView addSubview:imagePlan];
    }
    return self;
}

- (void)dealloc {
	self.backgroundView = nil;
	[imageBox removeFromSuperview];
	[imageCheck removeFromSuperview];
	[imageLine removeFromSuperview];
	[labelName removeFromSuperview];
	[labelPrice removeFromSuperview];
	[imagePlan removeFromSuperview];
	safe_release(imageBox);
	safe_release(imageCheck);
	safe_release(imageLine);
	safe_release(labelName);
	safe_release(labelPrice);
	safe_release(imagePlan);
    [super dealloc];
}

#pragma mark -
#pragma mark setter

- (void) setIndexPath:(NSIndexPath *)_indexPath{
	
	NSString* imageName	= (_indexPath.row %2 == 0)? ImageName_BgEven : ImageName_BgOdd;
	self.backgroundView = [[UIImageView point:CGPointMake(2,2) imageName:imageName]autorelease];
}

- (void) setItem:(WHItem *)_item{
	NSString* strName	= _item.name;
	NSString* strPrice	= _item.price;
	
	empty = [strName isEqualToString:@""];
	
	labelName.text	= strName;
	labelPrice.text	= strPrice;
	
	[self.contentView addSubview:labelName];
	[self.contentView addSubview:labelPrice];
	[self.contentView addSubview:imageLine];
}

- (void) setCheck:(BOOL)_check{
	
	if(empty){
		imageBox.alpha		= 
		imageCheck.alpha	= 
		labelName.alpha		= 
		labelPrice.alpha	= 
		imageLine.alpha		= 0.0f;
	}else {
		imageLine.alpha		= 1.0f;
		imageBox.alpha		= (_check)? 0.0 : 1.0;
		imageCheck.alpha	= (_check)? 1.0 : 0.0;
		
		labelName.enabled	= !_check;
		labelName.alpha		= (_check)? 0.5 : 1.0;
		labelPrice.enabled	= !_check;
		labelPrice.alpha	= (_check)? 0.5 : 1.0;
	}
}

- (void) addImage:(NSString*)_imageName{
	imagePlan.image	= nil;
	imagePlan.image	= [UIImage imageNamed:_imageName];
}



@end