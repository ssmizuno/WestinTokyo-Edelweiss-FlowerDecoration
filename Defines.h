#import "UIView+Addition.h"
#import "AppUtilities.h"

#ifdef DEBUG
//#if (TARGET_IPHONE_SIMULATOR)
#  define LOG(...) NSLog(__VA_ARGS__)
#  define LOG_CURRENT_METHOD NSLog(@&quot;%@/%@&quot;, NSStringFromClass([self class]), NSStringFromSelector(_cmd))
#else
#  define LOG(...) ;
#  define LOG_CURRENT_METHOD ;
#endif


#define	safe_release(a)		[a release],a	= nil
#define ifexist_release(a)	if(a)	safe_release(a);


#define DOCUMENTS_DIRECTORY [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]
#define TEMPORARY_DIRECTORY [NSHomeDirectory() stringByAppendingPathComponent:@"tmp"]
#define RESOURCES_DIRECTORY [[NSBundle mainBundle]resourcePath]

//jp.co.ssmulti.WestinHotelTokyo