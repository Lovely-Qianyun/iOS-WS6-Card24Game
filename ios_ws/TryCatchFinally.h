#import <Foundation/Foundation.h>


@interface SwiftTryCatch : NSObject


/**
 Provides try catch functionality for swift by wrapping around Objective-C
 */
+ (void)tryBlock:(void(^)())tryBlock catchBlock:(void(^)(NSException*exception))catchBlock finallyBlock:(void(^)())finallyBlock;
+ (void)throwString:(NSString*)s;
+ (void)throwException:(NSException*)e;
@end

