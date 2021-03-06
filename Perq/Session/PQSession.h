//
//  PQSession.h
//  Perq
//
//  Created by Dan Kwon on 8/6/14.
//  Copyright (c) 2014 TheGridMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PQDevice.h"

@interface PQSession : NSObject


@property (copy, nonatomic) NSString *deviceHash;
@property (copy, nonatomic) NSString *city;
@property (copy, nonatomic) NSString *state;
@property (copy, nonatomic) NSString *zip;
@property (strong, nonatomic) PQDevice *device;
@property (nonatomic) BOOL firstSession;
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
+ (PQSession *)sharedSession;
- (NSDictionary *)locationDictionary;
@end
