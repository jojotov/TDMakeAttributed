//
//  TDMStringAttribute.h
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import <TDMakeAttributed/TDMAttribute.h>

NS_ASSUME_NONNULL_BEGIN

@interface TDMStringAttribute : TDMAttribute

- (void)enumerateRangeAndAttributesUsingBlock:(void (NS_NOESCAPE ^)(NSRange range, NSDictionary *attributes))block;

@end

NS_ASSUME_NONNULL_END
