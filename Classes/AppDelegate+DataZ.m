#import "AppDelegate+DataZ.h"


@implementation AppDelegate (DataZ)

- (NSArray*) arrayZVolStandard{
	//zps001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"zps001.png"	item:@"ピュール" 		price:@"¥7,000"]];
	[array addObject:[WHItem makeItem:1 file:@"zps002.png"	item:@"ピアジェ" 		price:@"¥7,000"]];
	[array addObject:[WHItem makeItem:2 file:@"zps003.png"	item:@"フェリエ" 		price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:3 file:@"zps004.png"	item:@"ラフィーネ" 	price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:4 file:@"zps005.png"	item:@"クレア" 		price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:5 file:@"zps006.png"	item:@"マジェンタ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:6 file:@"zps007.png"	item:@"セレーネ" 		price:@"¥15,000"]];
	[array addObject:[WHItem makeItem:7 file:@"zps008.png"	item:@"ベルージュ" 	price:@"¥20,000"]];
	[array addObject:[WHItem makeItem:8 file:@"zps009.png"	item:@"ブランシェ" 	price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayZVolUpgrade{
	//zpa001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"zpa001.png"	item:@"ピュール" 		price:@"¥11,000"]];
	[array addObject:[WHItem makeItem:1 file:@"zpa002.png"	item:@"ピアジェ" 		price:@"¥11,000"]];
	[array addObject:[WHItem makeItem:2 file:@"zpa003.png"	item:@"フェリエ" 		price:@"¥17,000"]];
	[array addObject:[WHItem makeItem:3 file:@"zpa004.png"	item:@"ラフィーネ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:4 file:@"zpa005.png"	item:@"クレア" 		price:@"¥13,000～"]];
	[array addObject:[WHItem makeItem:5 file:@"zpa006.png"	item:@"マジェンタ" 	price:@"¥15,000～"]];
	[array addObject:[WHItem makeItem:6 file:@"zpa007.png"	item:@"セレーネ" 		price:@"¥30,000"]];
	[array addObject:[WHItem makeItem:7 file:@"zps008.png"	item:@"ベルージュ" 	price:@"無し"]];
	[array addObject:[WHItem makeItem:8 file:@"zpa009.png"	item:@"ブランシェ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayZVolMix{
	//zpm001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"zpm001.png"	item:@"ピュール" 		price:@"¥7,000～"]];
	[array addObject:[WHItem makeItem:1 file:@"zpm002.png"	item:@"ピアジェ" 		price:@"¥7,000～"]];
	[array addObject:[WHItem makeItem:2 file:@"zpm003.png"	item:@"フェリエ" 		price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:3 file:@"zpm004.png"	item:@"ラフィーネ" 	price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:4 file:@"zpm005.png"	item:@"クレア" 		price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:5 file:@"zpm006.png"	item:@"マジェンタ" 	price:@"¥13,000～"]];
	[array addObject:[WHItem makeItem:6 file:@"zpm007.png"	item:@"セレーネ" 		price:@"¥15,000～"]];
	[array addObject:[WHItem makeItem:7 file:@"zps008.png"	item:@"ベルージュ" 	price:@"¥20,000"]];
	[array addObject:[WHItem makeItem:8 file:@"zpm009.png"	item:@"ブランシェ" 	price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayZRoom{
	//zh001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"zh001.png"	item:@"楓"			price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"zh002.png"	item:@"桜"			price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"zh004.png"	item:@"ギャラクシー A"	price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"zh003.png"	item:@"ギャラクシー D"	price:@""]];
	[array addObject:[WHItem makeItem:4 file:@"zh005.png"	item:@"スター" 		price:@""]];
	return array;
}

- (NSArray*) arrayZPlan{
	//zmf001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"zmf001.png"	item:@"ピュール" 		price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:1 file:@"zmf002.png"	item:@"ピアジェ" 		price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:2 file:@"zmf003.png"	item:@"フェリエ" 		price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:3 file:@"zmf004.png"	item:@"ラフィーネ" 	price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:4 file:@"zmf005.png"	item:@"クレア" 		price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:5 file:@"zmf006.png"	item:@"マジェンタ" 	price:@"¥130,000"]];
	[array addObject:[WHItem makeItem:6 file:@"zmf007.png"	item:@"セレーネ" 		price:@"¥150,000"]];
	[array addObject:[WHItem makeItem:7 file:@"zmf008.png"	item:@"ベルージュ" 	price:@"¥200,000"]];
	[array addObject:[WHItem makeItem:8 file:@"zmf009.png"	item:@"ブランシェ" 	price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayZVolume{
	return [self arrayZVolume:currentPlan];
}

- (NSArray*) arrayZVolume:(NSInteger)_currentPlan{
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@""	item:@"スタンダード" 	price:[[[self arrayZVolStandard]objectAtIndex:_currentPlan] price]]];
	[array addObject:[WHItem makeItem:1 file:@""	item:@"アップグレード" price:[[[self arrayZVolUpgrade]objectAtIndex:_currentPlan] price]]];
	[array addObject:[WHItem makeItem:2 file:@""	item:@"ミックス"		price:[[[self arrayZVolMix]objectAtIndex:_currentPlan] price]]];
	return array;
}

- (NSArray*) arrayZVolumeItem{
	return [self arrayZVolumeItem:currentVolume];
}

- (NSArray*) arrayZVolumeItem:(NSInteger)_volumeIndex{
	switch(_volumeIndex){
		case 0:	return [self arrayZVolStandard];
		case 1:	return [self arrayZVolUpgrade];
		case 2:	return [self arrayZVolMix];
	}
	return [NSArray array];
}

- (NSArray*) arrayZCloth{
	//zt001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"zt001.png"	item:@"モアレ・ゴールド" 	price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"zt002.png"	item:@"チョコレート" 		price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"zt003.png"	item:@"ダークブルー" 		price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"zt004.png"	item:@"モアレ・ブルー" 	price:@""]];
	[array addObject:[WHItem makeItem:4 file:@"zt005.png"	item:@"モアレ・ボルドー" 	price:@""]];
	return array;
}

- (NSArray*) arrayZChair{
	return [self arrayZChair:currentRoom];
}

- (NSArray*) arrayZChair:(NSInteger)_roomIndex{
	
	NSMutableArray* array = [NSMutableArray array];
	switch(_roomIndex){
		case 0:
			[array addObject:[WHItem makeItem:0 file:@"zch001.png"	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"zch003.png"	item:@"楓チェアー" 		price:@""]];	//楓会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"zch004.png"	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 1:
			[array addObject:[WHItem makeItem:0 file:@"zch001.png"	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"zch004.png"	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 2:
			[array addObject:[WHItem makeItem:0 file:@"zch001.png"	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"zch004.png"	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 3:
			[array addObject:[WHItem makeItem:0 file:@"zch001.png"	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"zch004.png"	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 4:
			[array addObject:[WHItem makeItem:0 file:@"zch001.png"	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"zch002.png"	item:@"スターチェアー" 	price:@""]];	//スター会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"zch004.png"	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		default:
			break;
	}
	return array;
}


@end