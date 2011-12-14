#import "AppDelegate+DataG.h"


@implementation AppDelegate (DataG)

- (NSArray*) arrayGVolStandard{
	//mps001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"gps001.png" 	item:@"ピュール" 		price:@"¥7,000"]];
	[array addObject:[WHItem makeItem:1 file:@"gps002.png" 	item:@"ピアジェ" 		price:@"¥7,000"]];
	[array addObject:[WHItem makeItem:2 file:@"gps003.png" 	item:@"フェリエ" 		price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:3 file:@"gps004.png" 	item:@"ラフィーネ" 	price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:4 file:@"gps005.png" 	item:@"クレア" 		price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:5 file:@"gps006.png" 	item:@"マジェンタ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:6 file:@"gps007.png" 	item:@"セレーネ" 		price:@"¥15,000"]];
	[array addObject:[WHItem makeItem:7 file:@"gps008.png" 	item:@"ベルージュ" 	price:@"¥20,000"]];
	[array addObject:[WHItem makeItem:8 file:@"gps009.png" 	item:@"ブランシェ" 	price:@"¥10,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayGVolUpgrade{
	//mpa001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"gpa001.png" 	item:@"ピュール" 		price:@"¥11,000"]];
	[array addObject:[WHItem makeItem:1 file:@"gpa002.png" 	item:@"ピアジェ" 		price:@"¥11,000"]];
	[array addObject:[WHItem makeItem:2 file:@"gpa003.png" 	item:@"フェリエ" 		price:@"¥17,000"]];
	[array addObject:[WHItem makeItem:3 file:@"gpa004.png" 	item:@"ラフィーネ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:4 file:@"gpa005.png" 	item:@"クレア" 		price:@"¥13,000～"]];
	[array addObject:[WHItem makeItem:5 file:@"gpa006.png" 	item:@"マジェンタ" 	price:@"¥15,000～"]];
	[array addObject:[WHItem makeItem:6 file:@"gpa007.png" 	item:@"セレーネ" 		price:@"¥30,000"]];
	[array addObject:[WHItem makeItem:7 file:@"gps008.png" 	item:@"ベルージュ" 	price:@"無し"]];
	[array addObject:[WHItem makeItem:8 file:@"gpa009.png" 	item:@"ブランシェ" 	price:@"¥13,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayGVolMix{
	//mpm001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"gpa001.png" 	item:@"ピュール" 		price:@"¥7,000～"]];
	[array addObject:[WHItem makeItem:1 file:@"gpa002.png" 	item:@"ピアジェ" 		price:@"¥7,000～"]];
	[array addObject:[WHItem makeItem:2 file:@"gpa003.png" 	item:@"フェリエ" 		price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:3 file:@"gpa004.png" 	item:@"ラフィーネ" 	price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:4 file:@"gpm005.png" 	item:@"クレア" 		price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:5 file:@"gpa006.png" 	item:@"マジェンタ" 	price:@"¥13,000～"]];
	[array addObject:[WHItem makeItem:6 file:@"gpa007.png" 	item:@"セレーネ" 		price:@"¥15,000～"]];
	[array addObject:[WHItem makeItem:7 file:@"gps008.png" 	item:@"ベルージュ" 	price:@"¥20,000"]];
	[array addObject:[WHItem makeItem:8 file:@"gpa009.png" 	item:@"ブランシェ" 	price:@"¥10,000～"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayGRoom{
	//mh001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"gh001.png" 	item:@"楓"			price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"gh002.png" 	item:@"桜"			price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"gh004.png" 	item:@"ギャラクシー A"	price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"gh003.png" 	item:@"ギャラクシー D"	price:@""]];
	[array addObject:[WHItem makeItem:4 file:@"gh005.png" 	item:@"スター"		price:@""]];
	return array;
}

- (NSArray*) arrayGPlan{
	//mmf001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"gmf001.png" 	item:@"ピュール" 		price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:1 file:@"gmf002.png" 	item:@"ピアジェ" 		price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:2 file:@"gmf003.png" 	item:@"フェリエ" 		price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:3 file:@"gmf004.png" 	item:@"ラフィーネ" 	price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:4 file:@"gmf005.png" 	item:@"クレア" 		price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:5 file:@"gmf006.png" 	item:@"マジェンタ" 	price:@"¥130,000"]];
	[array addObject:[WHItem makeItem:6 file:@"gmf007.png" 	item:@"セレーネ" 		price:@"¥150,000"]];
	[array addObject:[WHItem makeItem:7 file:@"gmf008.png" 	item:@"ベルージュ" 	price:@"¥200,000"]];
	[array addObject:[WHItem makeItem:8 file:@"gmf009.png" 	item:@"ブランシェ" 	price:@"¥100,000"]];
	[array addObject:[WHItem makeItem:9 file:@""			item:@"なし"			price:@""]];
	return array;
}

- (NSArray*) arrayGVolume{
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"" 	item:@"スタンダード" 	price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"" 	item:@"アップグレード" price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"" 	item:@"ミックス" 		price:@""]];
	return array;
}

- (NSArray*) arrayGVolumeItem{
	return [self arrayGVolumeItem:currentVolume];
}

- (NSArray*) arrayGVolumeItem:(NSInteger)_volumeIndex{
	switch(_volumeIndex){
		case 0:	return [self arrayGVolStandard];
		case 1:	return [self arrayGVolUpgrade];
		case 2:	return [self arrayGVolMix];
	}
	return [NSArray array];
}

- (NSArray*) arrayGCloth{
	//mt001
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"gt001.png" 	item:@"モアレ・ゴールド"	price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"gt002.png" 	item:@"チョコレート"		price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"gt003.png" 	item:@"ダークブルー"		price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"gt004.png" 	item:@"モアレ・ブルー"		price:@""]];
	[array addObject:[WHItem makeItem:4 file:@"gt005.png" 	item:@"モアレ・ボルドー"	price:@""]];
	return array;
}

- (NSArray*) arrayGChair{
	return [self arrayGChair:currentRoom];
}

- (NSArray*) arrayGChair:(NSInteger)_roomIndex{
	
	NSMutableArray* array = [NSMutableArray array];
	switch(_roomIndex){
		case 0://楓
			[array addObject:[WHItem makeItem:0 file:@"gch001.png" 	item:@"グレースチェアー" 	price:@""]];
			[array addObject:[WHItem makeItem:1 file:@"gch003.png" 	item:@"楓チェアー" 		price:@""]];
			[array addObject:[WHItem makeItem:2 file:@"gch004.png" 	item:@"チェアカバー" 		price:@""]];
			break;
		case 1://桜
			[array addObject:[WHItem makeItem:0 file:@"gch001.png" 	item:@"グレースチェアー" 	price:@""]];
			[array addObject:[WHItem makeItem:1 file:@"gch004.png" 	item:@"チェアカバー" 		price:@""]];
			break;
		case 2://ギャラクシー
			[array addObject:[WHItem makeItem:0 file:@"gch001.png" 	item:@"グレースチェアー" 	price:@""]];
			[array addObject:[WHItem makeItem:1 file:@"gch004.png" 	item:@"チェアカバー" 		price:@""]];
			break;
		case 3://ギャラクシー
			[array addObject:[WHItem makeItem:0 file:@"gch001.png" 	item:@"グレースチェアー" 	price:@""]];
			[array addObject:[WHItem makeItem:1 file:@"gch004.png" 	item:@"チェアカバー" 		price:@""]];
			break;
		case 4://スター
			[array addObject:[WHItem makeItem:0 file:@"gch001.png" 	item:@"グレースチェアー"	price:@""]];
			[array addObject:[WHItem makeItem:1 file:@"gch002.png" 	item:@"スターチェアー"		price:@""]];
			[array addObject:[WHItem makeItem:2 file:@"gch004.png" 	item:@"チェアカバー" 		price:@""]];
			break;
		default:break;
	}
	return array;
}

- (NSArray*) arrayGChair2{
	return [self arrayGChair2:currentRoom];
}

- (NSArray*) arrayGChair2:(NSInteger)_roomIndex{
	
	NSMutableArray* array = [NSMutableArray array];
	switch(_roomIndex){
		case 0://楓
			[array addObject:[WHItem makeItem:0 file:@"gch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"gch103.png" 	item:@"楓チェアー" 		price:@""]];	//楓会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"gch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 1://桜
			[array addObject:[WHItem makeItem:0 file:@"gch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"gch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 2://ギャラクシー
			[array addObject:[WHItem makeItem:0 file:@"gch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"gch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 3://ギャラクシー
			[array addObject:[WHItem makeItem:0 file:@"gch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"gch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		case 4://スター
			[array addObject:[WHItem makeItem:0 file:@"gch101.png" 	item:@"グレースチェアー" 	price:@""]];	//全会場使用、レッドクロスは不使用
			[array addObject:[WHItem makeItem:1 file:@"gch102.png" 	item:@"スターチェアー" 	price:@""]];	//スター会場のみ使用
			[array addObject:[WHItem makeItem:2 file:@"gch104.png" 	item:@"チェアカバー" 		price:@""]];	//全会場使用
			break;
		default:break;
	}
	return array;
}
/*
[array addObject:[WHItem makeItem:4 file:@"1384.png"	thumbnail:@"thumb_1384.png" item:@"パドルキャンドル （アンバー）"				price:@"¥1,000"]];
[array addObject:[WHItem makeItem:2 file:@"1172.png"	thumbnail:@"thumb_1172.png" item:@"フローティング キャンドル（ミニ）白" 	price:@"¥500"]];
[array addObject:[WHItem makeItem:3 file:@"1355.png"	thumbnail:@"thumb_1355.png" item:@"グラスキャンドル"					price:@"¥300"]];
 */
- (NSArray*) arrayGCandle:(NSInteger)_planIndex{
	
	NSMutableArray* array = [NSMutableArray array];
	switch(_planIndex){
		case 0://ピュール
			[array addObject:[WHItem makeItem:0 file:@"678.png"		thumbnail:@"thumb_678.png" 	item:@"フローティング　キャンドル（LL）白" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:1 file:@"808.png"		thumbnail:@"thumb_808.png" 	item:@"フローティング　キャンドル（M）白" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:2 file:@"1172.png"	thumbnail:@"thumb_1172.png" item:@"フローティング キャンドル（ミニ）白" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:3 file:@"1355.png"	thumbnail:@"thumb_1355.png" item:@"グラスキャンドル"					price:@"¥300"]];
			[array addObject:[WHItem makeItem:4 file:@"3096.png"	thumbnail:@"thumb_3096.png" item:@"プティフルール"						price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:5 file:@"1384.png"	thumbnail:@"thumb_1384.png" item:@"パドルキャンドル （アンバー）"			price:@"¥1,000"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:6 file:@""			thumbnail:@""				item:@""								price:@""]];
			break;
		case 1://ピアジェ
			[array addObject:[WHItem makeItem:0 file:@"728.png"		thumbnail:@"thumb_728.png" 	item:@"フローティング キャンドル（LL）アイボリー" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:1 file:@"899.png"		thumbnail:@"thumb_899.png" 	item:@"フローティング キャンドル（M）バーガン" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:2 file:@"698.png"		thumbnail:@"thumb_698.png" 	item:@"フローティング キャンドル（LL）バーガン" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:3 file:@"832.png"		thumbnail:@"thumb_832.png" 	item:@"フローティング キャンドル（M）アイボリー" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:4 file:@"1205.png"	thumbnail:@"thumb_1205.png" item:@"フローティング キャンドル（ミニ）アイボリー" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:5 file:@"1355.png"	thumbnail:@"thumb_1355.png" item:@"グラスキャンドル"						price:@"¥300"]];
			[array addObject:[WHItem makeItem:6 file:@"1316.png"	thumbnail:@"thumb_1316.png" item:@"フローティング キャンドル（ミニ）バーガン" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:7 file:@"3107.png"	thumbnail:@"thumb_3107.png" item:@"プティフルール"							price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:8 file:@"1384.png"	thumbnail:@"thumb_1384.png" item:@"パドルキャンドル （アンバー）"				price:@"¥1,000"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:9 file:@"1172.png"	thumbnail:@"thumb_1172.png" item:@"フローティング キャンドル（ミニ）白" 		price:@"¥500"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:10 file:@""			thumbnail:@""				item:@""									price:@""]];
			break;
		case 2://フェリエ
			[array addObject:[WHItem makeItem:0 file:@"852.png"		thumbnail:@"thumb_852.png" 	item:@"フローティング キャンドル（M）オレンジ" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:1 file:@"832.png"		thumbnail:@"thumb_832.png" 	item:@"フローティング キャンドル（M）アイボリー" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:2 file:@"1281.png"	thumbnail:@"thumb_1281.png" item:@"フローティング キャンドル（ミニ）オレンジ" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:3 file:@"1355.png"	thumbnail:@"thumb_1355.png" item:@"グラスキャンドル"						price:@"¥300"]];
			[array addObject:[WHItem makeItem:4 file:@"1384.png"	thumbnail:@"thumb_1384.png" item:@"パドルキャンドル （アンバー）"				price:@"¥1,000"]];
			[array addObject:[WHItem makeItem:5 file:@"1205.png"	thumbnail:@"thumb_1205.png" item:@"フローティング キャンドル（ミニ）アイボリー" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:6 file:@"3127.png"	thumbnail:@"thumb_3127.png" item:@"プティフルール"							price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:7 file:@"3154.png"	thumbnail:@"thumb_3154.png" item:@"デコレーションフラワー"					price:@"¥2,500"]];
			[array addObject:[WHItem makeItem:8 file:@"1172.png"	thumbnail:@"thumb_1172.png" item:@"フローティング キャンドル（ミニ）白"		 	price:@"¥500"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:9 file:@""			thumbnail:@""				item:@""									price:@""]];
			break;
		case 3://ラフィーネ
			[array addObject:[WHItem makeItem:0 file:@"678.png"		thumbnail:@"thumb_678.png" 	item:@"フローティング　キャンドル（LL）白" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:1 file:@"808.png"		thumbnail:@"thumb_808.png" 	item:@"フローティング　キャンドル（M）白"			price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:2 file:@"983.png"		thumbnail:@"thumb_983.png" 	item:@"スクエアーキャンドル アルティー(M)" 		price:@"¥2,000"]];
			[array addObject:[WHItem makeItem:3 file:@"1172.png"	thumbnail:@"thumb_1172.png" item:@"フローティング キャンドル（ミニ）白" 		price:@"¥500"]];
			[array addObject:[WHItem makeItem:4 file:@"1355.png"	thumbnail:@"thumb_1355.png" item:@"グラスキャンドル"						price:@"¥300"]];
			[array addObject:[WHItem makeItem:5 file:@"1316.png"	thumbnail:@"thumb_1316.png" item:@"フローティング キャンドル（ミニ）バーガン" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:6 file:@"773.png"		thumbnail:@"thumb_773.png" 	item:@"ラウンド キャンドル（花付き）"				price:@"¥2,000"]];
			[array addObject:[WHItem makeItem:7 file:@"3106.png"	thumbnail:@"thumb_3106.png" item:@"プティフルール"							price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:8 file:@"1384.png"	thumbnail:@"thumb_1384.png" item:@"パドルキャンドル （アンバー）"				price:@"¥1,000"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:9 file:@""			thumbnail:@""				item:@""									price:@""]];
			break;
		case 4://クレア
			[array addObject:[WHItem makeItem:0 file:@"678.png"		thumbnail:@"thumb_678.png" 	item:@"フローティング　キャンドル（LL）白" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:1 file:@"808.png"		thumbnail:@"thumb_808.png" 	item:@"フローティング　キャンドル（M）白" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:2 file:@"1061.png"	thumbnail:@"thumb_1061.png" item:@"クリスタル キャンドル（L）"			price:@"¥1,000"]];
			[array addObject:[WHItem makeItem:3 file:@"1172.png"	thumbnail:@"thumb_1172.png" item:@"フローティング キャンドル（ミニ）白" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:4 file:@"1355.png"	thumbnail:@"thumb_1355.png" item:@"グラスキャンドル"					price:@"¥300"]];
			[array addObject:[WHItem makeItem:5 file:@"3140.png"	thumbnail:@"thumb_3140.png" item:@"プティフルール"						price:@"¥2,000"]];
			[array addObject:[WHItem makeItem:6 file:@"3145.png"	thumbnail:@"thumb_3145.png" item:@"プティフルール"						price:@"¥2,000"]];
			[array addObject:[WHItem makeItem:7 file:@"1384.png"	thumbnail:@"thumb_1384.png" item:@"パドルキャンドル （アンバー）"			price:@"¥1,000"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:8 file:@""			thumbnail:@""				item:@""								price:@""]];
			break;
		case 5://マジェンタ
			[array addObject:[WHItem makeItem:0 file:@"751.png"		thumbnail:@"thumb_751.png" 	item:@"フローティング キャンドル（コーン）" 	price:@"¥2,500"]];
			[array addObject:[WHItem makeItem:1 file:@"678.png"		thumbnail:@"thumb_678.png" 	item:@"フローティング　キャンドル（LL）白" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:2 file:@"808.png"		thumbnail:@"thumb_808.png" 	item:@"フローティング　キャンドル（M）白" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:3 file:@"1010.png"	thumbnail:@"thumb_1010.png" item:@"フローティング キャンドル（チロル）" 	price:@"¥1,000"]];
			[array addObject:[WHItem makeItem:4 file:@"1414.png"	thumbnail:@"thumb_1414.png" item:@"パドルキャンドル （パープル）" 		price:@"¥1,000"]];
			[array addObject:[WHItem makeItem:5 file:@"3121.png"	thumbnail:@"thumb_3121.png" item:@"プティフルール"						price:@"¥2,000"]];
			[array addObject:[WHItem makeItem:6 file:@"3170.png"	thumbnail:@"thumb_3170.png" item:@"デコレーションフラワー"				price:@"¥3,000"]];
			[array addObject:[WHItem makeItem:7 file:@"1384.png"	thumbnail:@"thumb_1384.png" item:@"パドルキャンドル （アンバー）"			price:@"¥1,000"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:8 file:@"1355.png"	thumbnail:@"thumb_1355.png" item:@"グラスキャンドル"					price:@"¥300"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:9 file:@"1172.png"	thumbnail:@"thumb_1172.png" item:@"フローティング キャンドル（ミニ）白" 	price:@"¥500"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:10 file:@""			thumbnail:@""				item:@""								price:@""]];
			break;
		case 6://セレーネ
			[array addObject:[WHItem makeItem:0 file:@"728.png"		thumbnail:@"thumb_728.png"		item:@"フローティング キャンドル（LL）アイボリー" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:1 file:@"773.png"		thumbnail:@"thumb_773.png"		item:@"ラウンド キャンドル（花付き）"				price:@"¥2,000"]];
			[array addObject:[WHItem makeItem:2 file:@"1384.png"	thumbnail:@"thumb_1384.png"		item:@"パドルキャンドル （アンバー）"				price:@"¥1,000"]];
			[array addObject:[WHItem makeItem:3 file:@"1126_2.png"	thumbnail:@"thumb_1126_2.png"	item:@"クリスタル キャンドル（S）"				price:@"¥2,000"]];
			[array addObject:[WHItem makeItem:4 file:@"3095.png"	thumbnail:@"thumb_3095.png" 	item:@"デコレーションフラワー （アジサイ）" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:5 file:@"3162.png"	thumbnail:@"thumb_3162.png" 	item:@"デコレーションフラワー"					price:@"¥2,500"]];
			[array addObject:[WHItem makeItem:6 file:@"1172.png"	thumbnail:@"thumb_1172.png"		item:@"フローティング キャンドル（ミニ）白" 		price:@"¥500"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:7 file:@"1355.png"	thumbnail:@"thumb_1355.png" 	item:@"グラスキャンドル"						price:@"¥300"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:8 file:@""			thumbnail:@""					item:@""									price:@""]];
			break;
		case 7://ベルージュ
			[array addObject:[WHItem makeItem:0 file:@"1126_3.png"	thumbnail:@"thumb_1126_3.png"	item:@"クリスタル キャンドル（S）" 			price:@"¥3,000"]];
			[array addObject:[WHItem makeItem:1 file:@"1384.png"	thumbnail:@"thumb_1384.png" 	item:@"パドルキャンドル （アンバー）"			price:@"¥1,000"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:2 file:@"1172.png"	thumbnail:@"thumb_1172.png" 	item:@"フローティング キャンドル（ミニ）白" 	price:@"¥500"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:3 file:@"1355.png"	thumbnail:@"thumb_1355.png" 	item:@"グラスキャンドル"					price:@"¥300"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:4 file:@""			thumbnail:@""					item:@""								price:@""]];
			break;
		case 8://ブランジェ
			[array addObject:[WHItem makeItem:0 file:@"9309.png"	thumbnail:@"thumb_9309.png" 	item:@"フローティングキャンドル（LL）白" 		price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:1 file:@"9327.png"	thumbnail:@"thumb_9327.png" 	item:@"フローティングキャンドル（M）ホワイト" 	price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:2 file:@"1172.png"	thumbnail:@"thumb_1172.png" 	item:@"フローティング キャンドル（ミニ）白" 	price:@"¥500"]];
			[array addObject:[WHItem makeItem:3 file:@"1355.png"	thumbnail:@"thumb_1355.png" 	item:@"グラスキャンドル"					price:@"¥300"]];
			[array addObject:[WHItem makeItem:4 file:@"1061.png"	thumbnail:@"thumb_1061.png" 	item:@"クリスタル キャンドル（L）"			price:@"¥1,000"]];
			[array addObject:[WHItem makeItem:5 file:@"3096.png"	thumbnail:@"thumb_3096.png" 	item:@"プティフルール"						price:@"¥1,500"]];
			[array addObject:[WHItem makeItem:7 file:@"1384.png"	thumbnail:@"thumb_1384.png" 	item:@"パドルキャンドル （アンバー）"			price:@"¥1,000"]];	//11/09/13追加
			[array addObject:[WHItem makeItem:8 file:@""			thumbnail:@""					item:@""								price:@""]];
			break;
		case 9://なし
			[array addObject:[WHItem makeItem:0 file:@"" thumbnail:@"" 	item:@"" price:@""]];
			break;
		default:break;
	}
	return array;
}


@end