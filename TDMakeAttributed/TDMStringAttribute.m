//
//  TDMStringAttribute.m
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import "TDMStringAttribute.h"

@interface TDMStringAttribute ()
@property(nonatomic, strong) NSMutableDictionary *attrDict;
@property(nonatomic, strong) NSMutableDictionary<NSString *, NSMutableDictionary *> *attrDictRangeMap;
@property(nonatomic, strong) NSMutableArray<NSString *> *rangeKeyQueue;

@property(nonatomic, assign) NSRange range;
@end

@implementation TDMStringAttribute

- (void)enumerateRangeAndAttributesUsingBlock:(void (NS_NOESCAPE ^)(NSRange, NSDictionary * _Nonnull))block {
    for (NSString *rangeKey in self.rangeKeyQueue) {
        NSDictionary *attributes = self.attrDictRangeMap[rangeKey];
        if (attributes && block) {
            block(NSRangeFromString(rangeKey), attributes);
        }
    }
}

- (nullable NSMutableDictionary<NSAttributedStringKey,id> *)attrDicInRange:(NSRange)range {
    NSString *rangeKey = NSStringFromRange(range);
    NSMutableDictionary *attrDic = self.attrDictRangeMap[rangeKey];
    return attrDic;
}

- (void)setRange:(NSRange)range {
    _range = range;
    NSMutableDictionary *activeDict = [self attrDicInRange:range];
    if (!activeDict) {
        activeDict = [NSMutableDictionary dictionary];
    }
    NSString *rangeKey = NSStringFromRange(range);
    [self.rangeKeyQueue addObject:rangeKey];
    self.attrDictRangeMap[rangeKey] = activeDict;
    self.attrDict = activeDict;
}

- (void)setForegroundColor:(UIColor *)color {
    self.attrDict[NSForegroundColorAttributeName] = color;
}

- (void)setBackgroundColor:(UIColor *)color {
    self.attrDict[NSBackgroundColorAttributeName] = color;
}

- (void)setFont:(UIFont *)font {
    self.attrDict[NSFontAttributeName] = font;
}

- (void)setParagraphStyle:(NSParagraphStyle *)style {
    self.attrDict[NSParagraphStyleAttributeName] = style;
}

- (void)setStrikethroughColor:(UIColor *)color {
    self.attrDict[NSStrikethroughColorAttributeName] = color;
}

- (void)setStrikethroughStyle:(NSInteger)style {
    self.attrDict[NSStrikethroughStyleAttributeName] = @(style);
}

- (void)setUnderlineStyle:(NSInteger)style {
    self.attrDict[NSUnderlineStyleAttributeName] = @(style);
}

- (void)setUnderlineColor:(UIColor *)color {
    self.attrDict[NSUnderlineColorAttributeName] = color;
}

- (void)setAttachment:(NSTextAttachment *)attachment {
    self.attrDict[NSAttachmentAttributeName] = attachment;
}

- (void)setHyperLink:(NSURL *)link {
    self.attrDict[NSLinkAttributeName] = link;
}

- (void)setStrokeWidth:(CGFloat)width {
    self.attrDict[NSStrokeWidthAttributeName] = @(width);
}

- (void)setStrokeColor:(UIColor *)color {
    self.attrDict[NSStrokeColorAttributeName] = color;
}

- (void)setLigature:(NSInteger)ligature {
    self.attrDict[NSLigatureAttributeName] = @(ligature);
}

- (void)setKern:(NSInteger)kern {
    self.attrDict[NSKernAttributeName] = @(kern);
}

- (void)setShadow:(NSShadow *)shadow {
    self.attrDict[NSShadowAttributeName] = shadow;
}

- (void)setTextEffect:(NSTextEffectStyle)effect {
    self.attrDict[NSTextEffectAttributeName] = effect;
}

- (void)setBaselineOffset:(CGFloat)offset {
    self.attrDict[NSBaselineOffsetAttributeName] = @(offset);
}

- (void)setObliqueness:(CGFloat)obliqueness {
    self.attrDict[NSObliquenessAttributeName] = @(obliqueness);
}

- (void)setExpansion:(CGFloat)expansion {
    self.attrDict[NSExpansionAttributeName] = @(expansion);
}

- (void)setWritingDirection:(NSInteger)direction {
    self.attrDict[NSWritingDirectionAttributeName] = @(direction);
}

- (void)setVerticalGlyphForm:(NSInteger)verticalGlyphForm {
    self.attrDict[NSVerticalGlyphFormAttributeName] = @(verticalGlyphForm);
}
#pragma mark - Lazy
- (NSMutableDictionary *)attrDict {
    if (!_attrDict) {
        _attrDict = [NSMutableDictionary dictionary];
    }
    return _attrDict;
}

- (NSMutableDictionary *)attrDictRangeMap {
    if (!_attrDictRangeMap) {
        _attrDictRangeMap = [NSMutableDictionary dictionary];
    }
    return _attrDictRangeMap;
}

- (NSMutableArray<NSString *> *)rangeKeyQueue {
    if (!_rangeKeyQueue) {
        _rangeKeyQueue = [NSMutableArray array];
    }
    return _rangeKeyQueue;
}
@end
