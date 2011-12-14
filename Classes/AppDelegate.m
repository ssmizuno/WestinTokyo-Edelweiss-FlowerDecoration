#import "AppDelegate.h"
#import "WHTopVC.h"

@implementation AppDelegate


@synthesize currentRoom;
@synthesize currentPlan;
@synthesize currentCloth;
@synthesize currentChair;
@synthesize currentVolume;
@synthesize currentAccessories;
@synthesize	currentDress;
@synthesize currentBouquet;
@synthesize	currentDress2;
@synthesize currentBouquet2;

@synthesize checkItemsForPlan;
@synthesize checkItemsForCloth;
@synthesize checkItemsForChair;
@synthesize checkItemsForVolume;
@synthesize checkItemsForAccessory;
@synthesize checkItemsForDress;
@synthesize checkItemsForBouquet;
@synthesize checkItemsForDress2;
@synthesize checkItemsForBouquet2;


//t*nt
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
	
	application.statusBarHidden		= YES;
	application.idleTimerDisabled	= YES;
	
	window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
	
	UIViewController* controller = [[[WHTopVC alloc]init]autorelease];
	
	navigation = [[UINavigationController alloc]initWithRootViewController:controller];
	navigation.navigationBarHidden = YES;
	[window addSubview:navigation.view];
	[window makeKeyAndVisible];
	
	return YES;
}

- (void) applicationWillTerminate:(UIApplication*)application{
	
}

- (void) dealloc{
	safe_release(window);
	safe_release(navigation);
	safe_release(currentAccessories);
	safe_release(checkItemsForPlan);
	safe_release(checkItemsForCloth);
	safe_release(checkItemsForChair);
	safe_release(checkItemsForVolume);
	safe_release(checkItemsForAccessory);
	safe_release(checkItemsForDress);
	safe_release(checkItemsForBouquet);
	safe_release(checkItemsForDress2);
	safe_release(checkItemsForBouquet2);
    [super dealloc];
}

#pragma mark -
#pragma mark CustomizeMethod

- (void) setZeroForBouquetSimulator{
	currentDress	= 
	currentBouquet	= 0;
	
	safe_release(checkItemsForDress);
	safe_release(checkItemsForBouquet);
	
	NSMutableArray* tmpcheckItemsForDress	= [NSMutableArray array];
	NSMutableArray* tmpcheckItemsForBouquet	= [NSMutableArray array];
	
	for(int i=0;i<[[self arrayDress] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentDress)? YES : NO];
		[tmpcheckItemsForDress addObject:check];
	}
	for(int i=0;i<[[self arrayBouquet] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentBouquet)? YES : NO];
		[tmpcheckItemsForBouquet addObject:check];
	}
	
	checkItemsForDress		= [[NSMutableArray alloc]initWithArray:tmpcheckItemsForDress];
	checkItemsForBouquet	= [[NSMutableArray alloc]initWithArray:tmpcheckItemsForBouquet];
}

- (void) setZeroForBouquetSimulator2{
	currentDress2	= 
	currentBouquet2	= 0;
	
	safe_release(checkItemsForDress2);
	safe_release(checkItemsForBouquet2);
	
	NSMutableArray* tmpcheckItemsForDress	= [NSMutableArray array];
	NSMutableArray* tmpcheckItemsForBouquet	= [NSMutableArray array];
	
	for(int i=0;i<[[self arrayDress] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentDress2)? YES : NO];
		[tmpcheckItemsForDress addObject:check];
	}
	for(int i=0;i<[[self arrayBouquet] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentBouquet2)? YES : NO];
		[tmpcheckItemsForBouquet addObject:check];
	}
	
	checkItemsForDress2		= [[NSMutableArray alloc]initWithArray:tmpcheckItemsForDress];
	checkItemsForBouquet2	= [[NSMutableArray alloc]initWithArray:tmpcheckItemsForBouquet];
}

- (void) setZeroForTableSimulator{
	self.currentRoom		= 
	self.currentPlan		= 
	self.currentCloth		= 
	self.currentChair		= 
	self.currentVolume		= 0;
	
	safe_release(checkItemsForPlan);
	safe_release(checkItemsForCloth);
	safe_release(checkItemsForVolume);
	safe_release(checkItemsForChair);
	
	NSMutableArray* tmpcheckItemsForPlan	= [NSMutableArray array];
	NSMutableArray* tmpcheckItemsForCloth	= [NSMutableArray array];
	NSMutableArray* tmpcheckItemsForChair	= [NSMutableArray array];
	NSMutableArray* tmpcheckItemsForVolume	= [NSMutableArray array];
	
	for(int i=0;i<[[self arrayZPlan] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentPlan)? YES : NO];
		[tmpcheckItemsForPlan addObject:check];
	}
	for(int i=0;i<[[self arrayZCloth] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentCloth)? YES : NO];
		[tmpcheckItemsForCloth addObject:check];
	}
	for(int i=0;i<[[self arrayZChair] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentChair)? YES : NO];
		[tmpcheckItemsForChair addObject:check];
	}
	for(int i=0;i<[[self arrayZVolume] count];i++){
		NSNumber* check = [NSNumber numberWithBool:(i==self.currentVolume)? YES : NO];
		[tmpcheckItemsForVolume addObject:check];
	}
	
	self.checkItemsForPlan		= tmpcheckItemsForPlan;
	self.checkItemsForCloth		= tmpcheckItemsForCloth;
	self.checkItemsForVolume	= tmpcheckItemsForVolume;
	self.checkItemsForChair		= tmpcheckItemsForChair;
	
}
- (void) setCurrentPlan:(NSInteger)_planIndex{
	currentPlan = _planIndex;
	
	safe_release(checkItemsForAccessory);

	NSArray* tmpitemsForAccessory	= [self arrayGCandle:self.currentPlan];
	
	NSMutableArray* tmpcheckItemsForAccessory	= [NSMutableArray array];
	NSMutableArray* tmpcurrentAccessory			= [NSMutableArray array];
	for(int i=0;i<16;i++){
		
		BOOL value = NO;
		NSNumber* check = [NSNumber numberWithBool:value];
		[tmpcheckItemsForAccessory addObject:check];
		
		NSDictionary* dic = [tmpitemsForAccessory lastObject];
		[tmpcurrentAccessory addObject:dic];
	}
	self.checkItemsForAccessory	= tmpcheckItemsForAccessory;
	self.currentAccessories		= tmpcurrentAccessory;
}

- (void) replacementCheck:(NSMutableArray*)_checkItems index:(NSInteger)_index{
	[_checkItems replaceObjectAtIndex:_index withObject:[NSNumber numberWithBool:YES]];
	//exclusion
	for(int i=0;i<[_checkItems count];i++){
		if(i != _index){
			[_checkItems replaceObjectAtIndex:i withObject:[NSNumber numberWithBool:NO]];
		}
	}
}

- (void) replacementCheckForPlan:(NSInteger)_index{		[self replacementCheck:checkItemsForPlan index:_index];}
- (void) replacementCheckForCloth:(NSInteger)_index{	[self replacementCheck:checkItemsForCloth index:_index];}
- (void) replacementCheckForVolume:(NSInteger)_index{	[self replacementCheck:checkItemsForVolume index:_index];}
- (void) replacementCheckForChair:(NSInteger)_index{	[self replacementCheck:checkItemsForChair index:_index];}
- (void) replacementCheckForDress:(NSInteger)_index{	[self replacementCheck:checkItemsForDress index:_index];}
- (void) replacementCheckForBouquet:(NSInteger)_index{	[self replacementCheck:checkItemsForBouquet index:_index];}
- (void) replacementCheckForDress2:(NSInteger)_index{	[self replacementCheck:checkItemsForDress2 index:_index];}
- (void) replacementCheckForBouquet2:(NSInteger)_index{	[self replacementCheck:checkItemsForBouquet2 index:_index];}



@end