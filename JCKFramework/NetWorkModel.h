//
//  NetWorkModel.h
//  JCKFramework
//
//  Created by CoNg on 2021/12/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetWorkModel : NSObject
@property (nonatomic, copy) NSString *TOKEN_KEY_URL;
@property (nonatomic, copy) NSString *TOKEN_VALUE_URL;
@property (nonatomic, copy) NSString *BASE_URL;

+(NetWorkModel *)shared;
@end

NS_ASSUME_NONNULL_END
