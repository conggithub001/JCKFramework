//
//  NetWorkRegisteredTools.h
//  JCKFramework
//
//  Created by CoNg on 2021/12/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetWorkRegisteredTools : NSObject

+(void *)registeredbase_url:(NSString *)url WithSecretKey:(NSString *)secretKey;
+(void)setTokenKey:(NSString *)tokenKey TokenValue:(NSString *)tokenValue;
@end

NS_ASSUME_NONNULL_END
