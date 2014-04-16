//
//  ZenUser.h
//  One
//
//  Created by Felipe on 3/17/14.
//  Copyright (c) 2014 Zendo. All rights reserved.
//

#import "ZenObject.h"

// ZenUser - Base Class
// Holds user information

@interface ZenUser : ZenObject

-(NSString*) getFirstName;
-(NSString*) getLastName;
-(NSString*) getEmail;
-(NSString*) getZipCode;
-(NSString*) getImage;
-(NSString*) getAccountType;
-(NSString*) getAccountValid;
-(NSDate*)   getAccountExpDate;

-(void) setFirstName:(NSString*)first;
-(void) setLastName:(NSString*)last;
-(void) setEmail:(NSString*)email;
-(void) setZipCode:(NSString*)zip;
-(void) setImage:(NSString*)name;
-(void) setAccountType:(NSString*)type;
-(void) setAccountValid:(NSString*)valid;
-(void) setAccountExpDate:(NSDate*)date;

@end
