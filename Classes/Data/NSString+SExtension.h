//
//  NSString+SExtension.h
//  HDIM
//
//  Created by SSS on 2019/4/1.
//  Copyright © 2019 mj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString(SExtension)
+(bool)isNull:(NSString*)str;
+(NSString*)removeSpaceAndNewline:(NSString *)str;
+(NSString*)removeNewline:(NSString *)str;
-(NSString*)md5;
@end

NS_ASSUME_NONNULL_END
