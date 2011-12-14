#import "WHPreviewVC+Addition.h"

#define STRCHECKfor16	@"0123456789ABCDEFabcdefg"
#define STRCHECKfor32	@"0123456789ABCDEFGHIJKLMNOPQRSTUV"
#define STRCHECKforNum	@"0123456789"

int to16Hex(const char str[ ]);
int to32Hex(const char str[ ]);




@implementation WHPreviewVC (forID)


- (BOOL) checkID:(NSString*)_text{
	NSUInteger length = [_text length];
	if(length != 25){
		return NO;
	}
	
	NSString* strRoom			= [_text substringWithRange:NSMakeRange(0,1)];
	NSString* strPlan			= [_text substringWithRange:NSMakeRange(1,1)];
	NSString* strVolume			= [_text substringWithRange:NSMakeRange(2,1)];
	NSString* strCloth			= [_text substringWithRange:NSMakeRange(3,1)];
	NSString* strChair			= [_text substringWithRange:NSMakeRange(4,1)];
	NSString* strAccessory1		= [_text substringWithRange:NSMakeRange(5,1)];
	NSString* strAccessory2		= [_text substringWithRange:NSMakeRange(6,1)];
	NSString* strAccessory3		= [_text substringWithRange:NSMakeRange(7,1)];
	NSString* strAccessory4		= [_text substringWithRange:NSMakeRange(8,1)];
	NSString* strAccessory5		= [_text substringWithRange:NSMakeRange(9,1)];
	NSString* strAccessory6		= [_text substringWithRange:NSMakeRange(10,1)];
	NSString* strAccessory7		= [_text substringWithRange:NSMakeRange(11,1)];
	NSString* strAccessory8		= [_text substringWithRange:NSMakeRange(12,1)];
	NSString* strAccessory9		= [_text substringWithRange:NSMakeRange(13,1)];
	NSString* strAccessory10	= [_text substringWithRange:NSMakeRange(14,1)];
	NSString* strAccessory11	= [_text substringWithRange:NSMakeRange(15,1)];
	NSString* strAccessory12	= [_text substringWithRange:NSMakeRange(16,1)];
	NSString* strAccessory13	= [_text substringWithRange:NSMakeRange(17,1)];
	NSString* strAccessory14	= [_text substringWithRange:NSMakeRange(18,1)];
	NSString* strAccessory15	= [_text substringWithRange:NSMakeRange(19,1)];
	NSString* strAccessory16	= [_text substringWithRange:NSMakeRange(20,1)];
	NSString* strDress			= [_text substringWithRange:NSMakeRange(21,1)];
	NSString* strBouquet		= [_text substringWithRange:NSMakeRange(22,1)];
	NSString* strDress2			= [_text substringWithRange:NSMakeRange(23,1)];
	NSString* strBouquet2		= [_text substringWithRange:NSMakeRange(24,1)];
	
	NSRange rangeRoom			= [STRCHECKforNum rangeOfString:strRoom];
	NSRange rangePlan			= [STRCHECKforNum rangeOfString:strPlan];
	NSRange rangeVolume			= [STRCHECKforNum rangeOfString:strVolume];
	NSRange rangeCloth			= [STRCHECKforNum rangeOfString:strCloth];
	NSRange rangeChair			= [STRCHECKforNum rangeOfString:strChair];
	NSRange rangeAccessory1		= [STRCHECKfor32 rangeOfString:strAccessory1];
	NSRange rangeAccessory2		= [STRCHECKfor32 rangeOfString:strAccessory2];
	NSRange rangeAccessory3		= [STRCHECKfor32 rangeOfString:strAccessory3];
	NSRange rangeAccessory4		= [STRCHECKfor32 rangeOfString:strAccessory4];
	NSRange rangeAccessory5		= [STRCHECKfor32 rangeOfString:strAccessory5];
	NSRange rangeAccessory6		= [STRCHECKfor32 rangeOfString:strAccessory6];
	NSRange rangeAccessory7		= [STRCHECKfor32 rangeOfString:strAccessory7];
	NSRange rangeAccessory8		= [STRCHECKfor32 rangeOfString:strAccessory8];
	NSRange rangeAccessory9		= [STRCHECKfor32 rangeOfString:strAccessory9];
	NSRange rangeAccessory10	= [STRCHECKfor32 rangeOfString:strAccessory10];
	NSRange rangeAccessory11	= [STRCHECKfor32 rangeOfString:strAccessory11];
	NSRange rangeAccessory12	= [STRCHECKfor32 rangeOfString:strAccessory12];
	NSRange rangeAccessory13	= [STRCHECKfor32 rangeOfString:strAccessory13];
	NSRange rangeAccessory14	= [STRCHECKfor32 rangeOfString:strAccessory14];
	NSRange rangeAccessory15	= [STRCHECKfor32 rangeOfString:strAccessory15];
	NSRange rangeAccessory16	= [STRCHECKfor32 rangeOfString:strAccessory16];
	NSRange rangeDress			= [STRCHECKfor32 rangeOfString:strDress];
	NSRange rangeBouquet		= [STRCHECKfor32 rangeOfString:strBouquet];
	NSRange rangeDress2			= [STRCHECKfor32 rangeOfString:strDress2];
	NSRange rangeBouquet2		= [STRCHECKfor32 rangeOfString:strBouquet2];
	
	if(rangeRoom.location == NSNotFound)		return NO;
	if(rangePlan.location == NSNotFound)		return NO;
	if(rangeVolume.location == NSNotFound)		return NO;
	if(rangeCloth.location == NSNotFound)		return NO;
	if(rangeChair.location == NSNotFound)		return NO;
	if(rangeAccessory1.location == NSNotFound)	return NO;
	if(rangeAccessory2.location == NSNotFound)	return NO;
	if(rangeAccessory3.location == NSNotFound)	return NO;
	if(rangeAccessory4.location == NSNotFound)	return NO;
	if(rangeAccessory5.location == NSNotFound)	return NO;
	if(rangeAccessory6.location == NSNotFound)	return NO;
	if(rangeAccessory7.location == NSNotFound)	return NO;
	if(rangeAccessory8.location == NSNotFound)	return NO;
	if(rangeAccessory9.location == NSNotFound)	return NO;
	if(rangeAccessory10.location == NSNotFound)	return NO;
	if(rangeAccessory11.location == NSNotFound)	return NO;
	if(rangeAccessory12.location == NSNotFound)	return NO;
	if(rangeAccessory13.location == NSNotFound)	return NO;
	if(rangeAccessory14.location == NSNotFound)	return NO;
	if(rangeAccessory15.location == NSNotFound)	return NO;
	if(rangeAccessory16.location == NSNotFound)	return NO;
	if(rangeDress.location == NSNotFound)		return NO;
	if(rangeBouquet.location == NSNotFound)		return NO;
	if(rangeDress2.location == NSNotFound)		return NO;
	if(rangeBouquet2.location == NSNotFound)	return NO;
	
	int intRoom			= [strRoom intValue];			
	int intPlan			= [strPlan intValue];			
	int intVolume		= [strVolume intValue];			
	int intCloth		= [strCloth intValue];			
	int intChair		= [strChair intValue];
	int intAccessory1	= to32Hex([strAccessory1 UTF8String]);
	int intAccessory2	= to32Hex([strAccessory2 UTF8String]);
	int intAccessory3	= to32Hex([strAccessory3 UTF8String]);
	int intAccessory4	= to32Hex([strAccessory4 UTF8String]);
	int intAccessory5	= to32Hex([strAccessory5 UTF8String]);
	int intAccessory6	= to32Hex([strAccessory6 UTF8String]);
	int intAccessory7	= to32Hex([strAccessory7 UTF8String]);
	int intAccessory8	= to32Hex([strAccessory8 UTF8String]);
	int intAccessory9	= to32Hex([strAccessory9 UTF8String]);
	int intAccessory10	= to32Hex([strAccessory10 UTF8String]);
	int intAccessory11	= to32Hex([strAccessory11 UTF8String]);
	int intAccessory12	= to32Hex([strAccessory12 UTF8String]);
	int intAccessory13	= to32Hex([strAccessory13 UTF8String]);
	int intAccessory14	= to32Hex([strAccessory14 UTF8String]);
	int intAccessory15	= to32Hex([strAccessory15 UTF8String]);
	int intAccessory16	= to32Hex([strAccessory16 UTF8String]);
	int intDress		= to32Hex([strDress UTF8String]);
	int intBouquet		= to32Hex([strBouquet UTF8String]);	
	int intDress2		= to32Hex([strDress2 UTF8String]);
	int intBouquet2		= to32Hex([strBouquet2 UTF8String]);
	
	if(intRoom > [[appDelegate arrayRoom] count]+1)					return NO;	//5 rooms
	if(intPlan > [[appDelegate arrayMPlan] count])					return NO;	//10 plans
	if(intVolume > [[appDelegate arrayMVolume] count])				return NO;	//3 volumes
	if(intCloth > [[appDelegate arrayMCloth] count])				return NO;	//5 clothes
	if(intChair > [[appDelegate arrayZChair:intRoom] count])		return NO;	//for a number greater than bound to the hall's chair
	if(intAccessory1 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intAccessory2 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory3 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory4 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory5 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory6 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory7 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory8 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory9 > [[appDelegate arrayGCandle:intPlan]count])	return NO;
	if(intAccessory10 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intAccessory11 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intAccessory12 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intAccessory13 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intAccessory14 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intAccessory15 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intAccessory16 > [[appDelegate arrayGCandle:intPlan]count])	return NO;	
	if(intDress > [[appDelegate arrayDress] count]+1)				return NO;	//10 dresses + no select
	if(intBouquet > [[appDelegate arrayBouquet] count])				return NO;	//28 bouquets
	if(intDress2 > [[appDelegate arrayDress] count]+1)				return NO;	//10 dresses + no select
	if(intBouquet2 > [[appDelegate arrayBouquet] count])			return NO;	//28 bouquets
	
	if(intChair == 0 && intCloth == 4){	// grace chair && red cloth
		return NO;
	}
	if((intPlan == 9 && intVolume == 1) || (intPlan == 9 && intVolume == 2)){
		//no plan and upgrade or mix
		return NO;	
	}
	return YES;
}

- (NSString*) makeID:(NSString*)_inputID{
	if(_inputID != nil){
		return [NSString stringWithFormat:@"%@ %@ %@\n%@ %@"
				,[_inputID substringWithRange:NSMakeRange(0, 5)]
				,[_inputID substringWithRange:NSMakeRange(5, 5)]
				,[_inputID substringWithRange:NSMakeRange(10, 5)]
				,[_inputID substringWithRange:NSMakeRange(15, 5)]
				,[_inputID substringWithRange:NSMakeRange(20, 5)]
				];
	}
	
	self.currentAccessory		= appDelegate.currentAccessories;
	
	NSString* textID = [NSString stringWithFormat:@"%d%d%d%d%d%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@"
				  ,currentRoom
				  ,currentPlan
				  ,currentVolume
				  ,currentCloth
				  ,currentChair
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:0]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:1]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:2]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:3]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:4]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:5]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:6]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:7]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:8]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:9]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:10]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:11]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:12]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:13]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:14]index]]
				  ,[self hex2Str:[(WHItem*)[currentAccessory objectAtIndex:15]index]]
				  ,(existBouquet)? [self hex2Str:currentDressW] : @"B"
				  ,(existBouquet)? [self hex2Str:currentBouquetW] : @"0"
				  ,(existBouquet)? ((existEvening)? [self hex2Str:currentDressE] : @"B" ) : @"0"
				  ,(existBouquet)? [self hex2Str:currentBouquetE] : @"0"];
	
	return [NSString stringWithFormat:@"%@ %@ %@\n%@ %@"
			,[textID substringWithRange:NSMakeRange(0, 5)]
			,[textID substringWithRange:NSMakeRange(5, 5)]
			,[textID substringWithRange:NSMakeRange(10, 5)]
			,[textID substringWithRange:NSMakeRange(15, 5)]
			,[textID substringWithRange:NSMakeRange(20, 5)]
			];
}

- (void) trimID:(NSString*)_textID{
	
	NSString* strRoom			= [_textID substringWithRange:NSMakeRange(0,1)];
	NSString* strPlan			= [_textID substringWithRange:NSMakeRange(1,1)];
	NSString* strVolume			= [_textID substringWithRange:NSMakeRange(2,1)];
	NSString* strCloth			= [_textID substringWithRange:NSMakeRange(3,1)];
	NSString* strChair			= [_textID substringWithRange:NSMakeRange(4,1)];
	NSString* strAccessory1		= [_textID substringWithRange:NSMakeRange(5,1)];
	NSString* strAccessory2		= [_textID substringWithRange:NSMakeRange(6,1)];
	NSString* strAccessory3		= [_textID substringWithRange:NSMakeRange(7,1)];
	NSString* strAccessory4		= [_textID substringWithRange:NSMakeRange(8,1)];
	NSString* strAccessory5		= [_textID substringWithRange:NSMakeRange(9,1)];
	NSString* strAccessory6		= [_textID substringWithRange:NSMakeRange(10,1)];
	NSString* strAccessory7		= [_textID substringWithRange:NSMakeRange(11,1)];
	NSString* strAccessory8		= [_textID substringWithRange:NSMakeRange(12,1)];
	NSString* strAccessory9		= [_textID substringWithRange:NSMakeRange(13,1)];
	NSString* strAccessory10	= [_textID substringWithRange:NSMakeRange(14,1)];
	NSString* strAccessory11	= [_textID substringWithRange:NSMakeRange(15,1)];
	NSString* strAccessory12	= [_textID substringWithRange:NSMakeRange(16,1)];
	NSString* strAccessory13	= [_textID substringWithRange:NSMakeRange(17,1)];
	NSString* strAccessory14	= [_textID substringWithRange:NSMakeRange(18,1)];
	NSString* strAccessory15	= [_textID substringWithRange:NSMakeRange(19,1)];
	NSString* strAccessory16	= [_textID substringWithRange:NSMakeRange(20,1)];
	NSString* strDress			= [_textID substringWithRange:NSMakeRange(21,1)];
	NSString* strBouquet		= [_textID substringWithRange:NSMakeRange(22,1)];
	NSString* strDress2			= [_textID substringWithRange:NSMakeRange(23,1)];
	NSString* strBouquet2		= [_textID substringWithRange:NSMakeRange(24,1)];
	
	currentRoom		= [strRoom integerValue];
	currentPlan		= [strPlan integerValue];
	currentVolume	= [strVolume integerValue];
	currentCloth	= [strCloth integerValue];
	currentChair	= [strChair integerValue];
	
	NSMutableArray* tmp = [NSMutableArray array];
	WHItem* i1		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory1]];
	WHItem* i2		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory2]];
	WHItem* i3		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory3]];
	WHItem* i4		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory4]];
	WHItem* i5		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory5]];
	WHItem* i6		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory6]];
	WHItem* i7		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory7]];
	WHItem* i8		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory8]];
	WHItem* i9		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory9]];
	WHItem* i10		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory10]];
	WHItem* i11		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory11]];
	WHItem* i12		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory12]];
	WHItem* i13		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory13]];
	WHItem* i14		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory14]];
	WHItem* i15		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory15]];
	WHItem* i16		= [[appDelegate arrayGCandle:currentPlan]objectAtIndex:[self str2Hex:strAccessory16]];
	[tmp addObject:i1];
	[tmp addObject:i2];
	[tmp addObject:i3];
	[tmp addObject:i4];
	[tmp addObject:i5];
	[tmp addObject:i6];
	[tmp addObject:i7];
	[tmp addObject:i8];
	[tmp addObject:i9];
	[tmp addObject:i10];
	[tmp addObject:i11];
	[tmp addObject:i12];
	[tmp addObject:i13];
	[tmp addObject:i14];
	[tmp addObject:i15];
	[tmp addObject:i16];
	
	self.currentAccessory		= tmp;	   
	
	NSInteger tmpDress;
	NSInteger tmpBouquet;
	NSInteger tmpDress2;
	NSInteger tmpBouquet2;
	if([strDress isEqualToString:@"B"]){
		existBouquet = NO;
		tmpDress	= 0;
		tmpBouquet	= 0;
		tmpDress2	= 0;
		tmpBouquet2	= 0;
	}else{
		existBouquet = YES;
		tmpDress	= [self str2Hex:strDress];
		tmpBouquet	= [self str2Hex:strBouquet];
		if([strDress2 isEqualToString:@"B"]){
			existEvening = NO;
			tmpDress2	= 0;
			tmpBouquet2	= 0;
		}else {
			existEvening = YES;
			tmpDress2	= [self str2Hex:strDress2];
			tmpBouquet2	= [self str2Hex:strBouquet2];
		}
	}
	currentDressW	= tmpDress;
	currentBouquetW	= tmpBouquet;
	currentDressE	= tmpDress2;
	currentBouquetE	= tmpBouquet2;
}


int to16Hex(const char str[ ]){
    short i = 0;
    short n;
    unsigned long x = 0;
    char c;
    while(str[i] != '\0'){
        if('0' <= str[i] && str[i] <= '9'){
            n = str[i] - '0';
        }else if('a' <= (c = tolower(str[i])) && c <= 'f'){
            n = c - 'a' + 10;
        }
        x = x *16 + n;
    }
    return (int)(x);
}
int to32Hex(const char str[ ]){
    short i = 0;
    short n;
    unsigned long x = 0;
    char c;
    while(str[i] != '\0'){
        if('0' <= str[i] && str[i] <= '9'){
            n = str[i] - '0';
        }else if('a' <= (c = tolower(str[i])) && c <= 'v'){
            n = c - 'a' + 10;
        }
        i++;
        x = x *32 + n;
    }
    return (int)(x);
}

- (int) str2Hex:(NSString*)_str{
	if([_str isEqualToString:@"0"]){		return 0;
	}else if([_str isEqualToString:@"1"]){	return 1;
	}else if([_str isEqualToString:@"2"]){	return 2;
	}else if([_str isEqualToString:@"3"]){	return 3;
	}else if([_str isEqualToString:@"4"]){	return 4;
	}else if([_str isEqualToString:@"5"]){	return 5;
	}else if([_str isEqualToString:@"6"]){	return 6;
	}else if([_str isEqualToString:@"7"]){	return 7;
	}else if([_str isEqualToString:@"8"]){	return 8;
	}else if([_str isEqualToString:@"9"]){	return 9;
	}else if([_str isEqualToString:@"A"]){	return 10;
	}else if([_str isEqualToString:@"B"]){	return 11;
	}else if([_str isEqualToString:@"C"]){	return 12;
	}else if([_str isEqualToString:@"D"]){	return 13;
	}else if([_str isEqualToString:@"E"]){	return 14;
	}else if([_str isEqualToString:@"F"]){	return 15;
	}else if([_str isEqualToString:@"G"]){	return 16;
	}else if([_str isEqualToString:@"H"]){	return 17;
	}else if([_str isEqualToString:@"I"]){	return 18;
	}else if([_str isEqualToString:@"J"]){	return 19;
	}else if([_str isEqualToString:@"K"]){	return 20;
	}else if([_str isEqualToString:@"L"]){	return 21;
	}else if([_str isEqualToString:@"M"]){	return 22;
	}else if([_str isEqualToString:@"N"]){	return 23;
	}else if([_str isEqualToString:@"O"]){	return 24;
	}else if([_str isEqualToString:@"P"]){	return 25;
	}else if([_str isEqualToString:@"Q"]){	return 26;
	}else if([_str isEqualToString:@"R"]){	return 27;
	}else if([_str isEqualToString:@"S"]){	return 28;
	}else if([_str isEqualToString:@"T"]){	return 29;
	}else if([_str isEqualToString:@"U"]){	return 30;
	}else if([_str isEqualToString:@"V"]){	return 31;
	}
	return 99;
}

- (NSString*) hex2Str:(int)_hex{
	switch (_hex){
		case 0:		return @"0";
		case 1:		return @"1";
		case 2:		return @"2";
		case 3:		return @"3";
		case 4:		return @"4";
		case 5:		return @"5";
		case 6:		return @"6";
		case 7:		return @"7";
		case 8:		return @"8";
		case 9:		return @"9";
		case 10:	return @"A";
		case 11:	return @"B";
		case 12:	return @"C";
		case 13:	return @"D";
		case 14:	return @"E";
		case 15:	return @"F";
		case 16:	return @"G";
		case 17:	return @"H";
		case 18:	return @"I";
		case 19:	return @"J";
		case 20:	return @"K";
		case 21:	return @"L";
		case 22:	return @"M";
		case 23:	return @"N";
		case 24:	return @"O";
		case 25:	return @"P";
		case 26:	return @"Q";
		case 27:	return @"R";
		case 28:	return @"S";
		case 29:	return @"T";
		case 30:	return @"U";
		case 31:	return @"V";
	}
	return nil;
}

@end