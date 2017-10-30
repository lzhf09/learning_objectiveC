//
//  main.m
//  learnfoundation
//
//  Created by lizhufeng on 24/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

//  术语Cocoa总的来说指的是foundation框架、Application Kit框架和名为Core Data的第三方框架

#import <Foundation/Foundation.h>
#import "UseNSNumber.h"
#import "UseNSString.h"
#import "UseNSArray.h"
#import "AddressCard.h"
#import "AddressBook.h"

void callAddressCard(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...m
//        NSLog(@"Hello, World!");
//        UseNSNumber *num = [[UseNSNumber alloc]init];
//        [num UesExample];
        
//        UseNSString *str = [[UseNSString alloc]init];
//        [str UesExample_1];
//        [str UesExample_2];
//        [str UesExample_3];
        
//        UseNSArray *arr = [[UseNSArray alloc]init];
//        [arr UesExample];
        callAddressCard();
        //Page 353
    }
    return 0;
}

void callAddressCard(void){
    //手写类的属性处理方法调用
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jewls337@axlc.com";
//    AddressCard *card1 = [[AddressCard alloc]init];
//    [card1 setName: aName];
//    [card1 setEmail: aEmail];
//    [card1 print];
    
    //使用生成器自动生成属性处理方法
    NSString *bName = @"Tony Iannino";
    NSString *bEmail = @"tony.iannino@techfitness.com";
    AddressCard *card1 = [[AddressCard alloc]init];
    AddressCard *card2 = [[AddressCard alloc]init];

//    [card1 setName: aName andEmail: aEmail];
//    [card2 setName: bName andEmail: bEmail];
//
//    [card1 print];
//    [card2 print];
 
    //使用地址薄
    NSString *cName = @"Stephen Kochan";
    NSString *cEmail = @"steve@classroomM.com";
    NSString *dName = @"Jamie Baker";
    NSString *dEmail = @"jbaker@classroomM.com";
    
    AddressCard *card3 = [[AddressCard alloc]init];
    AddressCard *card4 = [[AddressCard alloc]init];
    
    // 创建一个新的地址薄
    AddressBook *myBook = [[AddressBook alloc]
                           initWithName: @"Linda's Addredd Book"];
    
    NSLog(@"entries in addredd book after creation: %i",
          [myBook entries]);
    [card1 setName: aName andEmail: aEmail];
    [card2 setName: bName andEmail: bEmail];
    [card3 setName: cName andEmail: cEmail];
    [card4 setName: dName andEmail: dEmail];
    
    [myBook addCard: card1];
    [myBook addCard: card2];
    [myBook addCard: card3];
    [myBook addCard: card4];
    
    NSLog(@"Entries in address book after adding cards: %i",
          [myBook entries]);
    [myBook list];
    
    // 通过名字查找一个人
    NSLog(@"Stephen Kochan");
    
    AddressCard *myCard;
    myCard = [myBook lookup: @"stephen Kochan"];
    if(myCard !=nil)
        [myCard print];
    else
        NSLog(@"Not found!");
    
    //尝试另一种查找
    NSLog(@"Haibo Zhange");
    myCard = [myBook lookup: @"Harbo Zhange"];
    if(myCard !=nil)
        [myCard print];
    else
        NSLog(@"Not found!");
    
        
}
