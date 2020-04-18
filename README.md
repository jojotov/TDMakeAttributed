# TDMakeAttributed

> 💡Inspired by [CuteAttribute](https://github.com/qiuncheng/CuteAttribute) and [Masonry](https://github.com/SnapKit/Masonry).


Make `NSAttributedString` easier.



## Usage

Import public header:

```objective-c
#import <TDMakeAttributed/TDMakeAttribute.h>
```

Creates an attributed string as below:

```objective-c
NSAttributedString *attributedString = [@"Sample" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
    attr.foregroundColor([UIColor systemRedColor]).font([UIFont systemFontOfSize:24.0f]);
}];
```

which equals to creating a `NSAttributedString` in normal way:

```objective-c
NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"Sample" attributes:@{
    NSForegroundColorAttributeName: [UIColor systemRedColor],
    NSFontAttributeName: [UIFont systemFontOfSize:24.f]
}];
```

### Using `inRange()` to specified the range of attributes


```objective-c
NSAttributedString *attributedString2 = [@"Sample2" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
    attr.inRange(NSMakeRange(0, 3)).foregroundColor([UIColor systemBlueColor]).font([UIFont systemFontOfSize:24.0f]);
    attr.inRange(NSMakeRange(2, 4)).foregroundColor([UIColor systemPinkColor]).font([UIFont systemFontOfSize:14.0f]);
}];
```

`inRange` specified the range of the attributes defined follow-by, which means the attributes as below:

```objective-c
attr.inRange(NSMakeRange(0, 3)).att1.att2...
```

is equals to:

```objective-c
[xxx addAttributes:@{att1, att2...} range:NSMakeRange(0, 3)];
```

> 💡Note
>
> every `inRange()` call is stored in a FIFO queue, so the earlier `inRange()`  attributes might be covered by the later `inRange()` attributes. 

## 使用

导入头文件:

```objective-c
#import <TDMakeAttributed/TDMakeAttribute.h>
```

创建一个 `NSAttributedString`：

```objective-c
NSAttributedString *attributedString = [@"Sample" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
    attr.foregroundColor([UIColor systemRedColor]).font([UIFont systemFontOfSize:24.0f]);
}];
```

这与如下的原生方式创建出的 `NSAttributedString` 是相同的：

```objective-c
NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:@"Sample" attributes:@{
    NSForegroundColorAttributeName: [UIColor systemRedColor],
    NSFontAttributeName: [UIFont systemFontOfSize:24.f]
}];
```

###  使用 `inRange()` 指定富文本属性的区间


```objective-c
NSAttributedString *attributedString2 = [@"Sample2" td_makeAttributed:^(TDMAttribute * _Nonnull attr) {
    attr.inRange(NSMakeRange(0, 3)).foregroundColor([UIColor systemBlueColor]).font([UIFont systemFontOfSize:24.0f]);
    attr.inRange(NSMakeRange(2, 4)).foregroundColor([UIColor systemPinkColor]).font([UIFont systemFontOfSize:14.0f]);
}];
```

`inRange` 可以指定接下来定义的富文本属性生效的区间，例如下面的例子：

```objective-c
attr.inRange(NSMakeRange(0, 3)).att1.att2...
```

与使用 `NSMutableAttributedString` 添加一系列指定区间的富文本属性是等效的：

```objective-c
[xxx addAttributes:@{att1, att2...} range:NSMakeRange(0, 3)];
```

> 💡注意
>
> 每个 `inRange()` 后指定的属性都会被存储在 FIFO 的队列中，因此 `inRange()` 的调用顺序可能会导致相同区间的属性被覆盖掉。
