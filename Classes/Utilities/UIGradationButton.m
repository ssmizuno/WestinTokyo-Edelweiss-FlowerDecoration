#import "UIGradationButton.h"



@implementation UIGradationButton


@synthesize title;
@synthesize style;

#pragma mark -
#pragma mark override

- (void)setHighlighted:(BOOL)value {
	[super setHighlighted:value];
	[self setNeedsDisplay];
}

- (void)setSelected:(BOOL)value {
	[super setSelected:value];
	[self setNeedsDisplay];
}

- (void) setStyle:(UIGradationStyle)_style{
	style = _style;	
	
	self.titleLabel.font = [UIFont boldSystemFontOfSize:14];
	self.titleLabel.shadowOffset = CGSizeMake (0.0, 1.0);
	
	[self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[self setTitleColor:[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1] forState:(UIControlStateSelected&&UIControlStateHighlighted)];
	
}

#pragma mark -
#pragma mark setter

- (void) setTitle:(NSString *)_title{
	[self setTitle:_title forState:UIControlStateNormal];
	[self setTitle:_title forState:UIControlStateHighlighted];
	[self setTitle:_title forState:UIControlStateDisabled];
	[self setTitle:_title forState:UIControlStateSelected];
}


- (void) addRoundRect:(CGContextRef )context
				 rect:(CGRect)rc
			   radius:(CGFloat)radius{
	
	CGContextMoveToPoint( context, CGRectGetMinX(rc), CGRectGetMaxY(rc)-radius);
	CGContextAddArcToPoint( context, CGRectGetMinX(rc), CGRectGetMinY(rc), CGRectGetMidX(rc), CGRectGetMinY(rc), radius );
	CGContextAddArcToPoint( context, CGRectGetMaxX(rc), CGRectGetMinY(rc), CGRectGetMaxX(rc), CGRectGetMidY(rc), radius );
	CGContextAddArcToPoint( context, CGRectGetMaxX(rc), CGRectGetMaxY(rc), CGRectGetMidX(rc), CGRectGetMaxY(rc), radius );
	CGContextAddArcToPoint( context, CGRectGetMinX(rc), CGRectGetMaxY(rc), CGRectGetMinX(rc), CGRectGetMidY(rc), radius );
}

- (void)drawRect:(CGRect)rect {
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	CGFloat r = 5;
	
	CGContextSaveGState(context);
	
	[self addRoundRect:context rect:CGRectMake(0, 0, w, h) radius:r];
	
	CGContextClip(context);
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	
	size_t num_locations = 2;
	CGFloat locations[2] = {
		0.0,
		1.0	
	};
	CGPoint startPoint1	= CGPointMake(w/2, 0.0);
	CGPoint endPoint1	= CGPointMake(w/2, h);
	
	CGFloat components[4][8];
	if(style == UIGradationStyleBlack){
		CGFloat tmpcomponents[4][8] = {
			{
				0.037, 0.037, 0.027, 1.0,
				0.252, 0.246, 0.220, 1.0,
			},
			{
				0.082, 0.091, 0.089, 1.0,
				0.253, 0.243, 0.219, 1.0,
			},
			{
				0.253, 0.243, 0.219, 1.0,
				0.082, 0.091, 0.089, 1.0,
			},
			{
				0.252, 0.246, 0.220, 1.0,
				0.037, 0.037, 0.027, 1.0,
			}
		};
		memcpy(components,tmpcomponents,sizeof(components));
	}else if(style == UIGradationStyleGold){
		CGFloat tmpcomponents[4][8] = {
			{
				0.200, 0.160, 0.100, 1.0,
				0.277, 0.245, 0.148, 1.0,
			},
			{
				0.277, 0.245, 0.148, 1.0,
				0.963, 0.909, 0.818, 1.0,
			},
			{
				0.963, 0.909, 0.818, 1.0,
				0.277, 0.245, 0.148, 1.0,
			},
			{
				0.277, 0.245, 0.148, 1.0,
				0.285, 0.248, 0.154, 1.0,
			}
		};
		memcpy(components,tmpcomponents,sizeof(components));
	}
	
	if((self.state && UIControlStateSelected)|| (self.state && UIControlStateHighlighted)){
		
		CGGradientRef gradient0 = CGGradientCreateWithColorComponents(colorSpace, components[0], locations, num_locations);
//		CGGradientRef gradient1 = CGGradientCreateWithColorComponents(colorSpace, components[1], locations, num_locations);
		
		CGContextDrawLinearGradient(context, gradient0, startPoint1, endPoint1, 0);
//		CGContextDrawLinearGradient(context, gradient1, startPoint2, endPoint2, 0);
		
		CGGradientRelease(gradient0);
//		CGGradientRelease(gradient1);
		
	}else {
		
		CGGradientRef gradient2 = CGGradientCreateWithColorComponents(colorSpace, components[3], locations, num_locations);
//		CGGradientRef gradient3 = CGGradientCreateWithColorComponents(colorSpace, components[3], locations, num_locations);
		
		CGContextDrawLinearGradient(context, gradient2, startPoint1, endPoint1, 0);
//		CGContextDrawLinearGradient(context, gradient3, startPoint2, endPoint2, 0);
		
		CGGradientRelease(gradient2);
//		CGGradientRelease(gradient3);
	}
	CGContextSaveGState(context);
	CGContextRestoreGState(context);
	
	CGColorSpaceRelease(colorSpace);
}




@end