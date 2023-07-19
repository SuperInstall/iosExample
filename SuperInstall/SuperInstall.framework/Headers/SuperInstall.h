//
//  SuperInstall.h
//  SuperInstall
//
//  Created by fx on 2020/12/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperInstall : NSObject


/// Set host
/// @param host host description
+ (void)setHosts:(NSArray<NSString *> *)hosts;

/// init SDK
/// @param appKey appKey
+ (void)init:(NSString *)appKey withSecret:(NSString *)secret;

/// Get params
/// @param result params result
+ (void)getInstall:(void(^ _Nullable)(NSString *channel,NSDictionary * _Nullable data))result;

/// user register
+ (void)reportRegisterd;

/// user register
+ (void)reportRegisterd:(NSString *)Id;

+(void) point:(NSString *) point value:(long)value;

+(void) setChannel:(NSString *) channel;

+(void) setDebug:(bool) debug;

@end

NS_ASSUME_NONNULL_END
