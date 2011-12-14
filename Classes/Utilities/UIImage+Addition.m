#import "UIImage+Addition.h"


@implementation UIImage (Addition)

- (UIImage *) rollingOver{
	CGRect rect = CGRectMake(0,0, self.size.width, self.size.height);
	UIGraphicsBeginImageContext(rect.size);
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextDrawImage(context, rect, self.CGImage);
	CGAffineTransform transform = CGAffineTransformRotate(transform, M_PI/2);
	CGContextConcatCTM(context, transform);
	UIImage* result = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return result;
}


@end