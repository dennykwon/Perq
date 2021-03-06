//
//  PQDevice.h
//  Perq
//
//  Created by Dan Kwon on 8/9/14.
//  Copyright (c) 2014 TheGridMedia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PQDevice : NSObject

@property (copy, nonatomic) NSString *deviceHash;
@property (copy, nonatomic) NSString *deviceToken;
@property (copy, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSMutableArray *contactList;
@property (nonatomic) int points;
+ (PQDevice *)sharedDevice;
- (void)updateDevice;
- (void)updateDevice:(void (^)(void))completion;
- (NSDictionary *)parametersDictionary;
- (NSString *)jsonRepresentation;
- (void)populate:(NSDictionary *)info;
- (void)registerDevice;
- (void)storeDeviceToken;
- (void)cacheDevice;

@end
