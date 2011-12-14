#import "UIGButton.h"


@implementation UIGButton

@synthesize title;

#pragma mark -
#pragma mark override

-(id)initWithFrame:(CGRect)frame {
	if((self = [super initWithFrame:frame])){
		self.titleLabel.font			= [UIFont appFontJP:16];
		self.titleLabel.shadowOffset	= CGSizeMake(2.0f, 2.0f);
		self.titleLabel.shadowColor		= [UIColor blackColor];
		self.titleEdgeInsets			= UIEdgeInsetsMake(2.0, 4.0, 0.0, 0.0);
		[self titleRectForContentRect:self.frame];
		[self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
		[self setTitleColor:[UIColor colorWithWhite:1.0 alpha:0.5] forState:UIControlStateHighlighted];
	}
	return self;
}

- (void)setHighlighted:(BOOL)value {
	[super setHighlighted:value];
	[self setNeedsDisplay];
}

- (void)setSelected:(BOOL)value {
	[super setSelected:value];
	[self setNeedsDisplay];
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
	CGContextAddArcToPoint( context, CGRectGetMinX(rc), CGRectGetMinY(rc), CGRectGetMidX(rc), CGRectGetMinY(rc), 0 );
	CGContextAddArcToPoint( context, CGRectGetMaxX(rc), CGRectGetMinY(rc), CGRectGetMaxX(rc), CGRectGetMidY(rc), radius );
	CGContextAddArcToPoint( context, CGRectGetMaxX(rc), CGRectGetMaxY(rc), CGRectGetMidX(rc), CGRectGetMaxY(rc), radius );
	CGContextAddArcToPoint( context, CGRectGetMinX(rc), CGRectGetMaxY(rc), CGRectGetMinX(rc), CGRectGetMidY(rc), 0 );
}

- (void)drawRect:(CGRect)rect {
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	CGFloat r = 4;
	
	CGContextSaveGState(context);
	
	[self addRoundRect:context rect:CGRectMake(0, 0, w, h) radius:r];
	
	CGContextClip(context);
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
	
	size_t num_locations = 2;
	CGFloat locations[2] = {
		0.0,
		1.0	
	};
	CGPoint startPoint	= CGPointMake(w/2, 0.0);
	CGPoint endPoint	= CGPointMake(w/2, h);

	CGFloat components[2][8] = {
		{
			0.037, 0.037, 0.027, 1.0,
			0.252, 0.246, 0.220, 1.0,
		},
		{
			0.252, 0.246, 0.220, 1.0,
			0.037, 0.037, 0.027, 1.0,
		}
	};
	if((self.state && UIControlStateSelected)|| (self.state && UIControlStateHighlighted)){
		CGGradientRef gradient0 = CGGradientCreateWithColorComponents(colorSpace, components[0], locations, num_locations);
		CGContextDrawLinearGradient(context, gradient0, startPoint, endPoint, 0);
		CGGradientRelease(gradient0);
	}else {
		CGGradientRef gradient2 = CGGradientCreateWithColorComponents(colorSpace, components[1], locations, num_locations);
		CGContextDrawLinearGradient(context, gradient2, startPoint, endPoint, 0);
		CGGradientRelease(gradient2);
	}
	
	CGContextSaveGState(context);
	CGContextRestoreGState(context);
	
	CGColorSpaceRelease(colorSpace);
	
}


@end