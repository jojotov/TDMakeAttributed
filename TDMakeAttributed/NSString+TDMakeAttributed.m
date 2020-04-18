//
//  NSString+TDMakeAttributed.m
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import "NSString+TDMakeAttributed.h"
#import <TDMakeAttributed/TDMStringAttributeMaker.h>

@implementation NSString (TDMakeAttributed)

- (NSAttributedString *)td_makeAttributed:(void(^_Nullable)(TDMAttribute *attr))makingBlock {
    TDMStringAttributeMaker *maker = [[TDMStringAttributeMaker alloc] initWithMakableString:self];
    if (makingBlock) {
        makingBlock(maker.attr);
    }
    return [maker make];
}

@end
