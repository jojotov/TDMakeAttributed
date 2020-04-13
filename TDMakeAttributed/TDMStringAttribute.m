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
@property(nonatomic, assign) NSRange range;
@end

@implementation TDMStringAttribute

- (NSDictionary<NSAttributedStringKey,id> *)toDictionary {
    return [self.attrDict copy];
}

- (NSRange)activatedRange {
    return self.range;
}

- (void)setRange:(NSRange)range {
    _range = range;
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

@end
