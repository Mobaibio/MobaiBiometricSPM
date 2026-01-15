//
//  DOTGPBMessageFactory.h
//  DotProtocolBuffers
//
//  Created by Jakub Vallo on 23/12/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DOTGPBMessageFactory : NSObject

+ (nullable NSData *)serialize:(NSDictionary *)dictionary error:(NSError * __autoreleasing *)errorPtr;
+ (nullable NSDictionary *)deserialize:(NSDictionary *)dictionary error:(NSError * __autoreleasing *)errorPtr;

@end

NS_ASSUME_NONNULL_END
