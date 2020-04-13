//
//  TDMAttribute.h
//  TDMakeAttributed
//
//  Created by jojo on 2020/4/8.
//  Copyright © 2020 jojotov. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TDMAttribute : NSObject

/// Active attributed range 效果生效的范围.
- (TDMAttribute *(^)(NSRange range))inRange;

/// Foreground color 前景色, default `blackColor`.
- (TDMAttribute *(^)(UIColor *))foregroundColor API_AVAILABLE(macos(10.0), ios(6.0));

/// Background color 背景色, default `nil`, no background.
- (TDMAttribute *(^)(UIColor *))backgroundColor API_AVAILABLE(macos(10.0), ios(6.0));

/// Font 字体, default `Helvetica(Neue) 12`.
- (TDMAttribute *(^)(UIFont *))font API_AVAILABLE(macos(10.0), ios(6.0));

/// Paragraph style 段落样式, default `defaultParagraphStyle`
- (TDMAttribute *(^)(NSParagraphStyle *))paragraphStyle API_AVAILABLE(macos(10.0), ios(6.0));

/// Strikethrough line color 删除线颜色.
- (TDMAttribute *(^)(UIColor *))strikethroughColor API_AVAILABLE(macos(10.0), ios(6.0));

/// Strikethrough line style 删除线样式, default 0: no strikethrough.
/// e.g. NSUnderlinePatternSolid | NSUnderlineStyleSingle
- (TDMAttribute *(^)(NSInteger))strikethroughStyle API_AVAILABLE(macos(10.0), ios(7.0));

/// Underline style 下划线样式.
/// e.g. NSUnderlinePatternSolid | NSUnderlineStyleSingle
- (TDMAttribute *(^)(NSUnderlineStyle))underlineStyle API_AVAILABLE(macos(10.0), ios(6.0));

/// Underline color 下划线颜色.
- (TDMAttribute *(^)(UIColor *))underlineColor API_AVAILABLE(macos(10.0), ios(7.0));

/// Attachment
- (TDMAttribute *(^)(NSTextAttachment *))attachment API_AVAILABLE(macos(10.0), ios(7.0));

/// URL Link.
- (TDMAttribute *(^)(NSURL *))hyperLink  API_AVAILABLE(macos(10.0), ios(7.0));

/// Stroke width 空心字宽度, positive for stroke alone, negative for stroke and fill.
- (TDMAttribute *(^)(CGFloat))strokeWidth API_AVAILABLE(macos(10.0), ios(6.0));

/// Stroke color 空心字颜色, default is nil, same as foreground.
- (TDMAttribute *(^)(UIColor *))strokeColor API_AVAILABLE(macos(10.0), ios(6.0));

/// Ligatures 连体效果. default is `1`, default ligatures, `0` means no ligatures
- (TDMAttribute *(^)(NSInteger))ligature API_AVAILABLE(macos(10.0), ios(6.0));


/// Kern 间距, `0` means kerning is disabled.
- (TDMAttribute *(^)(NSInteger))kern API_AVAILABLE(macos(10.0), ios(6.0));

/// 阴影, default is `nil`, means no shadow.
- (TDMAttribute *(^)(NSShadow *))shadow API_AVAILABLE(macos(10.0), ios(6.0));

/// Text effect 文本特殊效果.
- (TDMAttribute *(^)(NSTextEffectStyle))textEffect API_AVAILABLE(macos(10.0), ios(7.0));

/// Baseline offset 基线偏移量.
- (TDMAttribute *(^)(CGFloat))baselineOffset API_AVAILABLE(macos(10.0), ios(7.0));

/// Obliqueness 倾斜量.
- (TDMAttribute *(^)(CGFloat))obliqueness API_AVAILABLE(macos(10.0), ios(7.0));

/// Expansion 拉伸和压缩.
- (TDMAttribute *(^)(CGFloat))expansion API_AVAILABLE(macos(10.0), ios(7.0));

/// 书写方向.
/*
 LRE: NSWritingDirectionLeftToRight|NSWritingDirectionEmbedding,
 RLE: NSWritingDirectionRightToLeft|NSWritingDirectionEmbedding,
 LRO: NSWritingDirectionLeftToRight|NSWritingDirectionOverride,
 RLO: NSWritingDirectionRightToLeft|NSWritingDirectionOverride,
 */
- (TDMAttribute *(^)(NSInteger))writingDirection API_AVAILABLE(macos(10.6), ios(7.0));

/// Vergical glyph form 横竖排版, 0 means horizontal text, 1 means vertical text.
- (TDMAttribute *(^)(NSInteger))verticalGlyphForm API_AVAILABLE(macos(10.6), ios(7.0));


#pragma mark - Abstract
- (void)setRange:(NSRange)range;
- (void)setForegroundColor:(UIColor *)color;
- (void)setBackgroundColor:(UIColor *)color;
- (void)setFont:(UIFont *)font;
- (void)setParagraphStyle:(NSParagraphStyle *)style;
- (void)setStrikethroughColor:(UIColor *)color;
- (void)setStrikethroughStyle:(NSInteger)style;
- (void)setUnderlineStyle:(NSInteger)style;
- (void)setUnderlineColor:(UIColor *)color;
- (void)setAttachment:(NSTextAttachment *)attachment;
- (void)setHyperLink:(NSURL *)link;
- (void)setStrokeWidth:(CGFloat)width;
- (void)setStrokeColor:(UIColor *)color;
- (void)setLigature:(NSInteger)ligature;
- (void)setKern:(NSInteger)kern;
- (void)setShadow:(NSShadow *)shadow;
- (void)setTextEffect:(NSTextEffectStyle)effect;
- (void)setBaselineOffset:(CGFloat)offset;
- (void)setObliqueness:(CGFloat)obliqueness;
- (void)setExpansion:(CGFloat)expansion;
- (void)setWritingDirection:(NSInteger)direction;
- (void)setVerticalGlyphForm:(NSInteger)verticalGlyphForm;

@end

NS_ASSUME_NONNULL_END
