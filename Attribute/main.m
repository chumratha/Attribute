//
//  main.m
//  Attribute
//
//  Created by Chum Ratha on 11/5/15.
//  Copyright © 2015 Chum Ratha. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonDelegate
@property id delegate;
@required
-(void)printPerson;
@end


@interface Car : NSObject
@property NSString *Name;
@end
@implementation Car

@synthesize Name;

@end

@interface Person:NSObject<NSCopying>
{
    id<PersonDelegate> delegate;
}
-(void)setID:(id) _id;
@property  Car* car;

@end
@implementation Person
- (id)copyWithZone:(nullable NSZone *)zone
{
    return self;
}
-(void)setID:(id)_id
{
    delegate=_id;
    [delegate printPerson];
}
@synthesize car;

@end

@interface Teacher : NSObject
+(void)printPerson;
@end
@implementation Teacher
{
    int ID;
}
+(void)printPerson
{
    NSLog(@"game");
}

@end

int main(int argc, const char * argv[]) {
    /*Teacher *t=[[Teacher alloc]init];
    Person *p=[[Person alloc]init];
    [p setID:t];
    Car *cc=[[Car alloc]init];
    cc.Name=@"game";
    p.car=cc;
    p.car.Name=@"__car";
    NSLog(@"%@ %@",p.car.Name,cc.Name);*/

    /*NSDictionary *d=[[NSDictionary alloc] initWithObjectsAndKeys:
                     @"A",@"1",
                     @"B",@"2"
                     
                     , nil];
    NSLog(@"game %@",[d objectForKey:@"2"]);*/
    NSSet *americanMakes = [NSSet setWithObjects:@"Chrysler", @"Ford",
                            @"General Motors", nil];
    NSLog(@"%@", americanMakes);
    
    return 0;
}












