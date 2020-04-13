//
//  NSString+TDMakeAttributed.h
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TDMAttribute.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TDMakeAttributed)

- (NSAttributedString *)td_makeAttributed:(void(^_Nullable)(TDMAttribute *attr))makingBlock;

@end

NS_ASSUME_NONNULL_END
