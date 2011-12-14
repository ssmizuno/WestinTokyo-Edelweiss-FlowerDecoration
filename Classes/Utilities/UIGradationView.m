#import "UIGradationView.h"


@implementation UIGradationView

@synthesize components;
@synthesize startPoint;
@synthesize endPoint;

- (void) drawRect:(CGRect)rect{
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSaveGState(context);
	CGContextClip(context);
	size_t num_locations = 2;
	CGFloat locations[2] = {0.0,1.0};
	CGFloat _components[8] = {
		[[components objectAtIndex:0]floatValue],
		[[components objectAtIndex:1]floatValue],
		[[components objectAtIndex:2]floatValue],
		[[components objectAtIndex:3]floatValue],
		[[components objectAtIndex:4]floatValue],
		[[components objectAtIndex:5]floatValue],
		[[components objectAtIndex:6]floatValue],
		[[components objectAtIndex:7]floatValue]
	};
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, _components, locations, num_locations);
	CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0);
	CGContextRestoreGState(context);
	CGContextSaveGState(context);
	CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 0.8);
	CGContextRestoreGState(context);
	
	CGGradientRelease(gradient);
	CGColorSpaceRelease(colorSpace);
}
- (void) dealloc{
	safe_release(components);
	[super dealloc];
}
@end