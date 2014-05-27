//
//  JAHConvertSDPTests.m
//  JAHConvertSDPTests
//
//  Created by Jon Hjelle on 5/16/14.
//  Copyright (c) 2014 Jon Hjelle. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JAHConvertSDP.h"

@interface JAHConvertSDPTests : XCTestCase

@end

@implementation JAHConvertSDPTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSDPToSDP {
    // convert SDP to objects
    NSURL* sdpURL = [[NSBundle mainBundle] URLForResource:@"sdp" withExtension:@"txt"];
    NSString* sdp = [NSString stringWithContentsOfURL:sdpURL encoding:NSUTF8StringEncoding error:nil];
    id objects = [JAHConvertSDP dictionaryForSDP:sdp withCreatorRole:@"initiator"];

    // Data that is typically unique or time dependent
    NSString* sid = @"1382398245712";
    NSString* time = @"1385147470924";
    NSString* newSDP = [JAHConvertSDP SDPForSession:objects sid:sid time:time];

    XCTAssertTrue([newSDP isEqual:sdp], @"Objects aren't equal");
}

@end
