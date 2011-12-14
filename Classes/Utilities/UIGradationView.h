#import <UIKit/UIKit.h>

//	how to use
//
//UIGradationView* bg = [[[UIGradationView alloc]initWithFrame:CGRectMake(25,11,450,657)]autorelease];
//CGFloat components[8] = {
//	0.268, 0.243, 0.156, 0.999,
//	0.933, 0.885, 0.803, 1.0
//};
//NSMutableArray* array = [NSMutableArray array];
//for(int i=0;i<8;i++)		[array addObject:[NSNumber numberWithFloat:components[i]]];
//bg.components	= array;
//bg.startPoint	= CGPointZero;
//bg.endPoint		= CGPointMake(bg.frame.size.width,bg.frame.size.height);
//[self addSubview:bg];


@interface UIGradationView : UIView {
	NSArray	*components;
	CGPoint startPoint;
	CGPoint endPoint;
}
@property (nonatomic, retain) NSArray	*components;
@property (nonatomic)	CGPoint startPoint;
@property (nonatomic)	CGPoint endPoint;

@end