//
//  NetworkManager.h
//  JCKFramework
//
//  Created by CoNg on 2021/12/3.
//

#import <Foundation/Foundation.h>
typedef enum : int {
    /// 默认
    NetworkMethod_GET = 0,
    ///  POST
    NetworkMethod_POST,
    /// PUT
    NetworkMethod_PUT,
    ///  DELETE
    NetworkMethod_DELETE
} Network_Method;
NS_ASSUME_NONNULL_BEGIN

@interface NetworkManager : NSObject

- (void)requestMethod:(Network_Method)method Path:(NSString *)path Parameters:(NSDictionary *)parameters complate:(void(^)(id res))complate;
@end

NS_ASSUME_NONNULL_END
