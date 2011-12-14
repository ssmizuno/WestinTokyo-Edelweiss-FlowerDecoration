#import "AppDelegate+DataM.h"


@implementation AppDelegate (DataM)

- (NSArray*) arrayMVolStandard{
	//mps001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"mps001.png" 	item:@"ピュール" 		price:@"¥7,000"]];
	[array addObject:[WHItem makeItem:1 file:@"mps002.png" 	item:@"ピアジェ" 		price:@"¥7,000"]];
	[array addObject:[WHItem makeItem:2 file:@"mps003.png" 	item:@"フェリエ" 		price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:3 file:@"mps004.png" 	item:@"ラフィーネ" 	price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:4 file:@"mps005.png" 	item:@"クレア" 		price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:5 file:@"mps006.png" 	item:@"マジェンタ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:6 file:@"mps007.png" 	item:@"セレーネ" 		price:@"¥15,000"]];
	[array addObject:[WHItem makeItem:7 file:@"mps008.png" 	item:@"ベルージュ" 	price:@"¥20,000"]];
	[array addObject:[WHItem makeItem:8 file:@"mps009.png" 	item:@"ブランシェ" 	price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayMVolUpgrade{
	//mpa001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"mpa001.png" 	item:@"ピュール" 		price:@"¥11,000"]];
	[array addObject:[WHItem makeItem:1 file:@"mpa002.png" 	item:@"ピアジェ" 		price:@"¥11,000"]];
	[array addObject:[WHItem makeItem:2 file:@"mpa003.png" 	item:@"フェリエ" 		price:@"¥17,000"]];
	[array addObject:[WHItem makeItem:3 file:@"mpa004.png" 	item:@"ラフィーネ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:4 file:@"mpa005.png" 	item:@"クレア" 		price:@"¥13,000～"]];
	[array addObject:[WHItem makeItem:5 file:@"mpa006.png" 	item:@"マジェンタ" 	price:@"¥15,000～"]];
	[array addObject:[WHItem makeItem:6 file:@"mpa007.png" 	item:@"セレーネ" 		price:@"¥30,000"]];
	[array addObject:[WHItem makeItem:7 file:@"mps008.png" 	item:@"ベルージュ" 	price:@"無し"]];
	[array addObject:[WHItem makeItem:8 file:@"mpa009.png" 	item:@"ブランシェ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayMVolMix{
	//mpm001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"mpa001.png" 	item:@"ピュール" 		price:@"¥7,000～"]];
	[array addObject:[WHItem makeItem:1 file:@"mpa002.png" 	item:@"ピアジェ" 		price:@"¥7,000～"]];
	[array addObject:[WHItem makeItem:2 file:@"mpa003.png" 	item:@"フェリエ" 		price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:3 file:@"mpa004.png" 	item:@"ラフィーネ" 	price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:4 file:@"mpm005.png" 	item:@"クレア" 		price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:5 file:@"mpa006.png" 	item:@"マジェンタ" 	price:@"¥13,000～"]];
	[array addObject:[WHItem makeItem:6 file:@"mpa007.png" 	item:@"セレーネ" 		price:@"¥15,000～"]];
	[array addObject:[WHItem makeItem:7 file:@"mps008.png" 	item:@"ベルージュ" 	price:@"¥20,000"]];
	[array addObject:[WHItem makeItem:8 file:@"mpa009.png" 	item:@"ブランシェ" 	price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayMRoom{
	//mh001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"mh001.png" 	item:@"楓"				price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"mh002.png" 	item:@"桜"				price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"mh004.png" 	item:@"ギャラクシー A" 	price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"mh003.png" 	item:@"ギャラクシー D" 	price:@""]];
	[array addObject:[WHItem makeItem:4 file:@"mh005.png" 	item:@"スター"			price:@""]];
	return array;
}

- (NSArray*) arrayMPlan{
	//mmf001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"mmf001.png" 	item:@"ピュール" 		price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:1 file:@"mmf002.png" 	item:@"ピアジェ" 		price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:2 file:@"mmf003.png" 	item:@"フェリエ" 		price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:3 file:@"mmf004.png" 	item:@"ラフィーネ" 	price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:4 file:@"mmf005.png" 	item:@"クレア" 		price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:5 file:@"mmf006.png" 	item:@"マジェンタ" 	price:@"¥130,000"]];
	[array addObject:[WHItem makeItem:6 file:@"mmf007.png" 	item:@"セレーネ" 		price:@"¥150,000"]];
	[array addObject:[WHItem makeItem:7 file:@"mmf008.png" 	item:@"ベルージュ" 	price:@"¥200,000"]];
	[array addObject:[WHItem makeItem:8 file:@"mmf009.png" 	item:@"ブランシェ" 	price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayMVolume{		
	return [self arrayMVolume:currentPlan];
}

- (NSArray*) arrayMVolume:(NSInteger)_currentPlan{		
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"" 	item:@"スタンダード" 	price:[[[self arrayMVolStandard]objectAtIndex:_currentPlan] price]]];
	[array addObject:[WHItem makeItem:1 file:@"" 	item:@"アップグレード" price:[[[self arrayMVolUpgrade]objectAtIndex:_currentPlan] price]]];
	[array addObject:[WHItem makeItem:2 file:@"" 	item:@"ミックス" 		price:[[[self arrayMVolMix]objectAtIndex:_currentPlan] price]]];
	return array;
}

- (NSArray*) arrayMVolumeItem{
	return [self arrayMVolumeItem:currentVolume];
}

- (NSArray*) arrayMVolumeItem:(NSInteger)_index{
	switch(_index){
		case 0:	return [self arrayMVolStandard];
		case 1:	return [self arrayMVolUpgrade];
		case 2:	return [self arrayMVolMix];
	}
	return [NSArray array];
}

- (NSArray*) arrayMCloth{
	//mt001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"mt001.png" 	item:@"モアレ・ゴールド"	price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"mt002.png" 	item:@"チョコレート"		price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"mt003.png" 	item:@"ダークブルー"		price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"mt004.png" 	item:@"モアレ・ブルー"		price:@""]];
	[array addObject:[WHItem makeItem:4 file:@"mt005.png" 	item:@"モアレ・ボルドー"	price:@""]];
	return array;
}

- (NSArray*) arrayMChair{
	return [self arrayMChair:currentRoom];
}

- (NSArray*) arrayMChair:(NSInteger)_roomIndex{
	
	NSMutableArray* array = [NSMutableArray array];
	switch(_roomIndex){
		case 0:
			[array addObject:[WHItem makeItem:0 file:@"mch001.png" 	item:@"グレースチェアー"	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch003.png" 	item:@"楓チェアー" 		price:@""]];	//楓会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"mch004.png" 	item:@"チェアカバー"		price:@""]];	//全会場使用
			break;
		case 1:
			[array addObject:[WHItem makeItem:0 file:@"mch001.png" 	item:@"グレースチェアー"	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch004.png" 	item:@"チェアカバー"		price:@""]];	//全会場使用
			break;
		case 2:
			[array addObject:[WHItem makeItem:0 file:@"mch001.png" 	item:@"グレースチェアー"	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch004.png" 	item:@"チェアカバー"		price:@""]];	//全会場使用
			break;
		case 3:
			[array addObject:[WHItem makeItem:0 file:@"mch001.png" 	item:@"グレースチェアー"	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch004.png" 	item:@"チェアカバー"		price:@""]];	//全会場使用
			break;
		case 4:
			[array addObject:[WHItem makeItem:0 file:@"mch001.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch002.png" 	item:@"スターチェアー" 	price:@""]];	//スター会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"mch004.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		default:
			break;
	}
	return array;
}

- (NSArray*) arrayMChair2{
	return [self arrayMChair2:currentRoom];
}

- (NSArray*) arrayMChair2:(NSInteger)_roomIndex{
	NSMutableArray* array = [NSMutableArray array];
	switch(_roomIndex){
		case 0:
			[array addObject:[WHItem makeItem:0 file:@"mch101.png" 	item:@"グレースチェアー"	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch103.png" 	item:@"楓チェアー"			price:@""]];	//楓会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"mch104.png" 	item:@"チェアカバー"		price:@""]];	//全会場使用
			break;
		case 1:
			[array addObject:[WHItem makeItem:0 file:@"mch101.png" 	item:@"グレースチェアー"	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 2:
			[array addObject:[WHItem makeItem:0 file:@"mch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 3:
			[array addObject:[WHItem makeItem:0 file:@"mch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 4:
			[array addObject:[WHItem makeItem:0 file:@"mch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"mch102.png" 	item:@"スターチェアー" 	price:@""]];	//スター会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"mch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		default:
			break;
	}
	return array;
}


@end