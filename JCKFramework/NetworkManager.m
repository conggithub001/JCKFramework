//
//  NetworkManager.m
//  JCKFramework
//
//  Created by CoNg on 2021/12/3.
//

#import "NetworkManager.h"
@interface NetworkManager()
@property (nonatomic,strong) RACSignal * reqSignal;
@end
@implementation NetworkManager

- (void)requestMethod:(Network_Method)method Path:(NSString *)path Parameters:(NSDictionary *)parameters complate:(void(^)(id res))complate{
    
    NSString *methodStr;
    switch (method) {
        case NetworkMethod_GET:
        {
            methodStr = HTTTP_METHOD_GET;
        }
            break;
        case NetworkMethod_POST:
        {
            methodStr = HTTTP_METHOD_POST;
        }
            break;
        case NetworkMethod_PUT:
        {
            methodStr = HTTTP_METHOD_PUT;
        }
            break;
        case NetworkMethod_DELETE:
        {
            methodStr = HTTTP_METHOD_DELETE;
        }
            break;
            
        default:
            break;
    }
    
    FMHttpRequest *req = [FMHttpRequest urlParametersWithMethod:methodStr path:path parameters:parameters];
    _reqSignal = [[FMARCNetwork sharedInstance] requestNetworkData:req];
    
    [_reqSignal subscribeNext:^(FMHttpResonse *response) {
        if (response.isSuccess) {
            NSLog(@"返回的数据：\n%@",response.reqResult);
            if ([response.reqResult isKindOfClass:[NSArray class]]) {
                NSArray *datas = response.reqResult;
                if (datas.count == 0) {
                    [MBProgressHUD wj_showError:@"没有更多的数据"];
                }
            }
            complate(response.reqResult);
        } else {
            NSLog(@"%@-%@-%@",path,parameters,response.message);
            complate(response.message);
        }
        
    }];
}

@end
