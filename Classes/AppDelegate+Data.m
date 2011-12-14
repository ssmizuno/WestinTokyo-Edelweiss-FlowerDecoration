#import "AppDelegate+Data.h"


@implementation AppDelegate (Data)



- (NSArray*) arrayRoom{		
	
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"room_00.png" item:@"楓"			price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"room_01.png" item:@"桜"			price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"room_02.png" item:@"ギャラクシー" 	price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"room_03.png" item:@"スター" 		price:@""]];
	return array;
}

- (NSArray*) arrayDress{
	
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0 file:@"dress_00.png" thumbnail:@"dress_thumb_00.png" item:@"ケリー"			price:@""]];
	[array addObject:[WHItem makeItem:1 file:@"dress_01.png" thumbnail:@"dress_thumb_01.png" item:@"アンネマリー" 		price:@""]];
	[array addObject:[WHItem makeItem:2 file:@"dress_02.png" thumbnail:@"dress_thumb_02.png" item:@"プリンセス" 		price:@""]];
	[array addObject:[WHItem makeItem:3 file:@"dress_03.png" thumbnail:@"dress_thumb_03.png" item:@"プリンセスホワイト" price:@""]];
	[array addObject:[WHItem makeItem:4 file:@"dress_04.png" thumbnail:@"dress_thumb_04.png" item:@"ローズユミ" 		price:@""]];
	[array addObject:[WHItem makeItem:5 file:@"dress_05.png" thumbnail:@"dress_thumb_05.png" item:@"プリンセスイエロー" price:@""]];
	[array addObject:[WHItem makeItem:6 file:@"dress_06.png" thumbnail:@"dress_thumb_06.png" item:@"プリンセスピンク" 	price:@""]];
	[array addObject:[WHItem makeItem:7 file:@"dress_07.png" thumbnail:@"dress_thumb_07.png" item:@"リラ"			price:@""]];
	[array addObject:[WHItem makeItem:8 file:@"dress_08.png" thumbnail:@"dress_thumb_08.png" item:@"オスカー" 		price:@""]];
	[array addObject:[WHItem makeItem:9 file:@"dress_09.png" thumbnail:@"dress_thumb_09.png" item:@"ルビーレッド" 		price:@""]];
	return array;
}

- (NSArray*) arrayBouquet{
	
	NSMutableArray* array = [NSMutableArray array];
	[array addObject:[WHItem makeItem:0		file:@"01-W103.png"	thumbnail:@"bouquet_thumb_00.png"	item:@"Wi-1"	price:@"¥58,000"]];
	[array addObject:[WHItem makeItem:1		file:@"02-W102.png"	thumbnail:@"bouquet_thumb_01.png"	item:@"Wi-2"	price:@"¥40,000"]];
	[array addObject:[WHItem makeItem:2		file:@"03-W104.png"	thumbnail:@"bouquet_thumb_02.png"	item:@"Wi-3"	price:@"¥45,000"]];
	[array addObject:[WHItem makeItem:3		file:@"04-W101.png"	thumbnail:@"bouquet_thumb_03.png"	item:@"Wi-4"	price:@"¥45,000"]];
	[array addObject:[WHItem makeItem:4		file:@"05-6200.png"	thumbnail:@"bouquet_thumb_04.png"	item:@"Wi-5"	price:@"¥45,000"]];
	[array addObject:[WHItem makeItem:5		file:@"06-6211.png"	thumbnail:@"bouquet_thumb_05.png"	item:@"Wi-6"	price:@"¥45,000"]];
	[array addObject:[WHItem makeItem:6		file:@"07-6238.png"	thumbnail:@"bouquet_thumb_06.png"	item:@"Wi-7"	price:@"¥48,000"]];
	[array addObject:[WHItem makeItem:7		file:@"08-3024.png"	thumbnail:@"bouquet_thumb_07.png"	item:@"Wi-8"	price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:8		file:@"09-6250.png"	thumbnail:@"bouquet_thumb_08.png"	item:@"Wi-9"	price:@"¥70,000"]];
	[array addObject:[WHItem makeItem:9		file:@"10-6220.png"	thumbnail:@"bouquet_thumb_09.png"	item:@"Wi-10"	price:@"¥50,000"]];
	[array addObject:[WHItem makeItem:10	file:@"11-2991.png"	thumbnail:@"bouquet_thumb_10.png"	item:@"Wi-11"	price:@"¥60,000"]];
	[array addObject:[WHItem makeItem:11	file:@"12-3059.png"	thumbnail:@"bouquet_thumb_11.png"	item:@"Wi-12"	price:@"¥35,000"]];
	[array addObject:[WHItem makeItem:12	file:@"13-2960.png"	thumbnail:@"bouquet_thumb_12.png"	item:@"Wi-13"	price:@"¥50,000"]];
	[array addObject:[WHItem makeItem:13	file:@"14-3012.png"	thumbnail:@"bouquet_thumb_13.png"	item:@"Wi-14"	price:@"¥45,000"]];
	[array addObject:[WHItem makeItem:14	file:@"15-3022.png"	thumbnail:@"bouquet_thumb_14.png"	item:@"Wi-15"	price:@"¥32,000"]];
	[array addObject:[WHItem makeItem:15	file:@"16-3048.png"	thumbnail:@"bouquet_thumb_15.png"	item:@"Wi-16"	price:@"¥45,000"]];
	[array addObject:[WHItem makeItem:16	file:@"17-E210.png"	thumbnail:@"bouquet_thumb_16.png"	item:@"Ei-1"	price:@"¥40,000"]];
	[array addObject:[WHItem makeItem:17	file:@"18-W105.png"	thumbnail:@"bouquet_thumb_17.png"	item:@"Ei-2"	price:@"¥40,000"]];
	[array addObject:[WHItem makeItem:18	file:@"19-E212.png"	thumbnail:@"bouquet_thumb_18.png"	item:@"Ei-3"	price:@"¥30,000"]];
	[array addObject:[WHItem makeItem:19	file:@"20-3037.png"	thumbnail:@"bouquet_thumb_19.png"	item:@"Ei-4"	price:@"¥50,000"]];
	[array addObject:[WHItem makeItem:20	file:@"21-3032.png"	thumbnail:@"bouquet_thumb_20.png"	item:@"Ei-5"	price:@"¥36,000"]];
	[array addObject:[WHItem makeItem:21	file:@"22-6270.png"	thumbnail:@"bouquet_thumb_21.png"	item:@"Ei-6"	price:@"¥58,000"]];
	[array addObject:[WHItem makeItem:22	file:@"23-6285.png"	thumbnail:@"bouquet_thumb_22.png"	item:@"Ei-7"	price:@"¥42,000"]];
	[array addObject:[WHItem makeItem:23	file:@"24-E201.png"	thumbnail:@"bouquet_thumb_23.png"	item:@"Ei-8"	price:@"¥40,000"]];
	[array addObject:[WHItem makeItem:24	file:@"25-6295.png"	thumbnail:@"bouquet_thumb_24.png"	item:@"Ei-9"	price:@"¥42,000"]];
	[array addObject:[WHItem makeItem:25	file:@"26-2999.png"	thumbnail:@"bouquet_thumb_25.png"	item:@"Ei-10"	price:@"¥47,000"]];
	[array addObject:[WHItem makeItem:26	file:@"27-6255.png"	thumbnail:@"bouquet_thumb_26.png"	item:@"Ei-11"	price:@"¥42,000"]];
	return array;
}


@end