//
//  SToolsTests.m
//  SToolsTests
//
//  Created by SSS on 2019/6/17.
//  Copyright © 2019 SSS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../Classes/SDataTools.h"
@interface SToolsTests : XCTestCase

@end

@implementation SToolsTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    //初始化的代码,在测试方法调用之前调用
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    //释放测试用例的资源代码
    
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
   int a= [SDataConvertTool NSStringToInt:@"a"];
    NSLog(@"aa%d",a);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        
    }];
}

@end
