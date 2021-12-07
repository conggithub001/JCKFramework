//
//  NetWorkModel.m
//  JCKFramework
//
//  Created by CoNg on 2021/12/3.
//

#import "NetWorkModel.h"
static NetWorkModel *_tools = nil;
@implementation NetWorkModel
+ (NetWorkModel *)shared{
    @synchronized(self){
        if (!_tools) {
            _tools = NetWorkModel.new;
        }
    }return _tools;
}

- (instancetype)init{
    if (self = [super init]) {
    }return self;
}
@end
