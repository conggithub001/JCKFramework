//
//  ToolsManager.m
//  JCKFramework
//
//  Created by CoNg on 2021/12/3.
//

#import "ToolsManager.h"

@implementation ToolsManager
- (void)showMBP{
    NSLog(@"ToolsManager showMBP");
    [MBProgressHUD wj_showSuccess:@"测试成功调用"];
}
@end
