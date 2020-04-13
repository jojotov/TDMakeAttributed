//
//  NSString+TDMakeAttributed.m
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import "NSString+TDMakeAttributed.h"
#import <TDMakeAttributed/TDMAttributeMaker.h>
#import "TDMAttributeMaker.h"

@implementation NSString (TDMakeAttributed)

- (NSAttributedString *)td_makeAttributed:(void(^_Nullable)(TDMAttribute *attr))makingBlock {
    TDMAttributeMaker *maker = [[TDMAttributeMaker alloc] initWithMakableString:self];
    if (makingBlock) {
        makingBlock(maker.attr);
    }
    return [maker make];
}

@end
