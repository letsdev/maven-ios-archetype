//
//  LDGHUnitTest.m
//  App
//
//  Created by Patrick Haaser on 20.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// For iOS
#import <GHUnitIOS/GHUnit.h> 
// For Mac OS X
//#import <GHUnit/GHUnit.h>

@interface LDGHUnitTest : GHTestCase { }
@end

@implementation LDGHUnitTest

- (BOOL)shouldRunOnMainThread {
    // By default NO, but if you have a UI test or test dependent on running on the main thread return YES
    return NO;
}

- (void)setUpClass {
    // Run at start of all tests in the class
}

- (void)tearDownClass {
    // Run at end of all tests in the class
}

- (void)setUp {
    // Run before each test method
}

- (void)tearDown {
    // Run after each test method
}  

- (void)testFoo {       
    NSString *a = @"foo";
    GHTestLog(@"I can log to the GHUnit test console: %@", a);
    
    // Assert a is not NULL, with no custom error description
    GHAssertNotNULL(a, nil);
    
    // Assert equal objects, add custom error description
    NSString *b = @"bar";
    GHAssertEqualObjects(a, b, @"A custom error message. a should be equal to: %@.", b);
}

- (void)testBar {
    GHAssertTrue(TRUE, @"Yes it worked");
}

@end
