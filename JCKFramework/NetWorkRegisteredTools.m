//
//  NetWorkRegisteredTools.m
//  JCKFramework
//
//  Created by CoNg on 2021/12/3.
//

#import "NetWorkRegisteredTools.h"

#import "NetWorkModel.h"
@interface NetWorkRegisteredTools()
//@property (nonatomic, copy) NSString *TOKEN_KEY_URL;
//@property (nonatomic, copy) NSString *TOKEN_VALUE_URL;
//@property (nonatomic, copy) NSString *BASE_URL;
@end
@implementation NetWorkRegisteredTools
+(void *)registeredbase_url:(NSString *)url WithSecretKey:(NSString *)secretKey{
    if ([secretKey isEqualToString:@"123"]) {
//                _tools.BASE_URL =  url;
        [NetWorkModel shared].BASE_URL = url;
    }
    return nil;
}

+ (void)setTokenKey:(NSString *)tokenKey TokenValue:(NSString *)tokenValue
{
    [NetWorkModel shared].TOKEN_KEY_URL = tokenKey;
    [NetWorkModel shared].TOKEN_VALUE_URL = tokenValue;
}
@end
