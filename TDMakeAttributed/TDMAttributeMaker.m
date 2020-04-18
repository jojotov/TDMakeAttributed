//
//  TDMAttributeMaker.m
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import "TDMAttributeMaker.h"
#import "TDMStringAttribute.h"

@interface TDMAttributeMaker ()
@property(nonatomic, strong) NSMutableAttributedString *makingString;
@property(nonatomic, strong) TDMStringAttribute *stringAttr;
@end

@implementation TDMAttributeMaker

- (instancetype)initWithMakableString:(NSString *)string {
    if (self = [super init]) {
        self.makingString = [[NSMutableAttributedString alloc] initWithString:string];
        self.stringAttr.inRange(NSMakeRange(0, string.length));
    }
    return self;
}


- (NSAttributedString *)make {
    [self.stringAttr enumerateRangeAndAttributesUsingBlock:^(NSRange range, NSDictionary * _Nonnull attributes) {
        if (attributes.count) {
            [self.makingString addAttributes:attributes range:range];
        }
    }];
    return [self.makingString copy];
}

- (TDMStringAttribute *)stringAttr {
    if (!_stringAttr) {
        _stringAttr = [TDMStringAttribute new];
    }
    return _stringAttr;
}

- (TDMAttribute *)attr {
    return self.stringAttr;
}
@end
