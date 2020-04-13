//
//  TDMAttributeMaker.h
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TDMakeAttributed/TDMAttribute.h>

NS_ASSUME_NONNULL_BEGIN

@interface TDMAttributeMaker : NSObject

- (instancetype)initWithMakableString:(NSString *)string;

@property(nonatomic, strong, readonly) TDMAttribute *attr;

- (NSAttributedString *)make;

@end

NS_ASSUME_NONNULL_END
