//
//  ZenUser.m
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenUser.h"

// ZenUser - Base Class
// Holds user information

//Variable Values:
NSString* const ZenUserFirstName            = @"usFirstName";
NSString* const ZenUserLastName             = @"usLastName";
NSString* const ZenUserEmail                = @"usEmail";
NSString* const ZenUserZipCode              = @"usZipCode";
NSString* const ZenUserImage                = @"usUserImage";
NSString* const ZenUserAccountType          = @"usAccType";
NSString* const ZenUserAccountValid         = @"usAccIsValid";
NSString* const ZenUserAccountExpDate       = @"usAccExpDate";

@implementation ZenUser 

#pragma mark - getters

-(NSString*) getFirstName
{
    return [self retrieve:ZenUserFirstName];
}

-(NSString*) getLastName
{
    return [self retrieve:ZenUserLastName];
}

-(NSString*) getEmail
{
    return [self retrieve:ZenUserEmail];
}

-(NSString*) getZipCode
{
    return [self retrieve:ZenUserZipCode];
}

-(NSString*) getImage
{
    return [self retrieve:ZenUserImage];
}

-(NSString*) getAccountType
{
    return [self retrieve:ZenUserAccountType];
}

-(NSString*) getAccountValid
{
    return [self retrieve:ZenUserAccountValid];
}

-(NSDate*) getAccountExpDate
{
    return [self retrieve:ZenUserAccountExpDate];
}

#pragma mark - setters

-(void) setFirstName:(NSString*)first
{
    [self store:first forKey:ZenUserFirstName];
}

-(void) setLastName:(NSString*)last
{
    [self store:last forKey:ZenUserLastName];
}

-(void) setEmail:(NSString*)email
{
    [self store:email forKey:ZenUserEmail];
}

-(void) setZipCode:(NSString*)zip
{
    [self store:zip forKey:ZenUserZipCode];
}

-(void) setImage:(NSString*)name
{
    [self store:name forKey:ZenUserImage];
}

-(void) setAccountType:(NSString*)type
{
    [self store:type forKey:ZenUserAccountType];
}

-(void) setAccountValid:(NSString*)valid
{
    [self store:valid forKey:ZenUserAccountValid];
}

-(void) setAccountExpDate:(NSDate*)date
{
    [self store:date forKey:ZenUserAccountExpDate];
}

@end
