//
//  TDMAttribute.m
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import "TDMAttribute.h"

#define TDMMethodNotImplemented() \
    @throw [NSException exceptionWithName:NSInternalInconsistencyException \
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] \
                                 userInfo:nil]


@implementation TDMAttribute

- (TDMAttribute *(^)(NSRange range))inRange {
    return ^id(NSRange value){
        self.range = value;
        return self;
    };
}

- (TDMAttribute *(^)(UIColor *))foregroundColor {
    return ^id(UIColor *value){
        self.foregroundColor = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^id(UIColor *value){
        self.backgroundColor = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(UIFont * _Nonnull))font {
    return ^id(UIFont *value){
        self.font = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSParagraphStyle * _Nonnull))paragraphStyle {
    return ^id(NSParagraphStyle *value){
        self.paragraphStyle = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(UIColor * _Nonnull))strikethroughColor {
    return ^id(UIColor *value){
        self.strikethroughColor = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSInteger))strikethroughStyle {
    return ^id(NSInteger value){
        self.strikethroughStyle = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(UIColor * _Nonnull))underlineColor {
    return ^id(UIColor *value){
        self.underlineColor = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSUnderlineStyle))underlineStyle {
    return ^id(NSUnderlineStyle value){
        self.underlineStyle = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSTextAttachment * _Nonnull))attachment {
    return ^id(NSTextAttachment *value){
        self.attachment = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSURL * _Nonnull))hyperLink {
    return ^id(NSURL *value){
        self.hyperLink = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(CGFloat))strokeWidth {
    return ^id(CGFloat value){
        self.strokeWidth = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(UIColor * _Nonnull))strokeColor {
    return ^id(UIColor *value){
        self.strokeColor = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSInteger))ligature {
    return ^id(NSInteger value){
        self.ligature = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSInteger))kern {
    return ^id(NSInteger value){
        self.kern = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSShadow * _Nonnull))shadow {
    return ^id(NSShadow *value){
        self.shadow = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSTextEffectStyle _Nonnull))textEffect {
    return ^id(NSTextEffectStyle value){
        self.textEffect = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(CGFloat))baselineOffset {
    return ^id(CGFloat value){
        self.baselineOffset = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(CGFloat))obliqueness {
    return ^id(CGFloat value){
        self.obliqueness = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(CGFloat))expansion {
    return ^id(CGFloat value){
        self.expansion = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSInteger))writingDirection {
    return ^id(NSInteger value){
        self.writingDirection = value;
        return self;
    };
}

- (TDMAttribute * _Nonnull (^)(NSInteger))verticalGlyphForm {
    return ^id(NSInteger value){
        self.verticalGlyphForm = value;
        return self;
    };
}



#pragma mark - Abstract
- (void)setForegroundColor:(UIColor *__unused)color                 { TDMMethodNotImplemented(); }
- (void)setRange:(NSRange __unused)range                            { TDMMethodNotImplemented(); }
- (void)setBackgroundColor:(UIColor *__unused)color                 { TDMMethodNotImplemented(); }
- (void)setFont:(UIFont *__unused)font                              { TDMMethodNotImplemented(); }
- (void)setParagraphStyle:(NSParagraphStyle *__unused)style         { TDMMethodNotImplemented(); }
- (void)setStrikethroughColor:(UIColor *__unused)color              { TDMMethodNotImplemented(); }
- (void)setStrikethroughStyle:(NSInteger __unused)style             { TDMMethodNotImplemented(); }
- (void)setUnderlineStyle:(NSInteger __unused)style                 { TDMMethodNotImplemented(); }
- (void)setUnderlineColor:(UIColor *__unused)color                  { TDMMethodNotImplemented(); }
- (void)setAttachment:(NSTextAttachment *__unused)attachment        { TDMMethodNotImplemented(); }
- (void)setHyperLink:(NSURL *__unused)link                          { TDMMethodNotImplemented(); }
- (void)setStrokeWidth:(CGFloat __unused)width                      { TDMMethodNotImplemented(); }
- (void)setStrokeColor:(UIColor *__unused)color                     { TDMMethodNotImplemented(); }
- (void)setLigature:(NSInteger __unused)ligature                    { TDMMethodNotImplemented(); }
- (void)setKern:(NSInteger __unused)kern                            { TDMMethodNotImplemented(); }
- (void)setShadow:(NSShadow *__unused)shadow                        { TDMMethodNotImplemented(); }
- (void)setTextEffect:(NSTextEffectStyle __unused)effect            { TDMMethodNotImplemented(); }
- (void)setBaselineOffset:(CGFloat __unused)offset                  { TDMMethodNotImplemented(); }
- (void)setObliqueness:(CGFloat __unused)obliqueness                { TDMMethodNotImplemented(); }
- (void)setExpansion:(CGFloat __unused)expansion                    { TDMMethodNotImplemented(); }
- (void)setWritingDirection:(NSInteger __unused)direction           { TDMMethodNotImplemented(); }
- (void)setVerticalGlyphForm:(NSInteger __unused)verticalGlyphForm  { TDMMethodNotImplemented(); }


@end
