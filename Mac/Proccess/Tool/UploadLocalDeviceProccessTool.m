//
//  UploadLocalDeviceProccessTool.m
//  SDataToolsLib_Mac
//
//  Created by SSS on 2019/6/30.
//  Copyright © 2019 SSS. All rights reserved.
//

#import "UploadLocalDeviceProccessTool.h"
#import "../Handler/UploadLocalDeviceProccessResultHandler.h"
@implementation UploadLocalDeviceProccessTool
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.resultHandler=[UploadLocalDeviceProccessResultHandler new];
    }
    return self;
}
-(ProccessResult*)doWorkWithPackPath:(NSString*)packPath fastlanePath:(NSString*)fastlanePath{
    NSString *content=[NSString stringWithFormat:@"%@%@",FASTLANE_ENV,
                       @"PACKPATH=$1;\
                       FASTLANE=$2;\
                       cd ${PACKPATH};\
                       ${FASTLANE} add_device"];
    
    content=[content stringByReplacingOccurrencesOfString:@"$1" withString:packPath];
    content=[content stringByReplacingOccurrencesOfString:@"$2" withString:fastlanePath];
    NSString*result=[self doWork:content];
    return [self.resultHandler handleResultFromOrinalResult:result];
}

//-(NSString *)doWork:(NSString *)content{
//    return [super doWork:content];
//}
@end