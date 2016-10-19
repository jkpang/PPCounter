# PPCounter

一款简单实用的数字加减动画,支持UILabel、UIButton显示

![image](https://github.com/jkpang/PPCounter/blob/master/PPCounter.gif)

##Requirements 要求
* iOS 7+
* Xcode 8+

##Installation 安装
###1.手动安装:
`下载DEMO后,将子文件夹PPCounter拖入到项目中, 导入头文件UILabel+PPCounter.h或UIButton+PPCounter.h开始使用`
###2.CocoaPods安装:
first
`pod 'PPCounter',:git => 'https://github.com/jkpang/PPCounter.git'`
then
`pod install或pod install --no-repo-update`

如果发现pod search PPCounter 不是最新版本，在终端执行pod setup命令更新本地spec镜像缓存(时间可能有点长),重新搜索就OK了
##Usage 使用方法
###1. UILabel
####1.1 设置一般字体属性UILabel
```objc
....
[label pp_fromNumber:0 toNumber:100 duration:1.5 animationType:PPCounterAnimationTypeEaseOut formatBlock:^NSString *(CGFloat number) {
    // 此处自由拼接内容
    return [NSString stringWithFormat:@"%.2f",number];
} completeBlock:^{
        
    // 完成的回调
}];
```
####1.2 设置富文本字体属性UILabel

```objc
....
[label pp_fromNumber:0 toNumber:100 duration:1.5 animationType:PPCounterAnimationTypeEaseOut attributedFormatBlock:^NSAttributedString *(CGFloat number) {
        
    // 此处自由设置富文本属性的内容
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@""];
    return attributedString;
} completeBlock:^{
        
    // 完成的回调
}];

```
###2. UIButton

####1.1 设置一般字体属性UIButton
```objc
....
[button pp_fromNumber:0 toNumber:100 duration:1.5 animationType:PPCounterAnimationTypeEaseOut formatBlock:^NSString *(CGFloat number) {
    // 此处自由拼接内容
    return [NSString stringWithFormat:@"%.2f",number];
} completeBlock:^{
        
    // 完成的回调
}];
```
####1.2 设置富文本字体属性UIButton

```objc
....
[button pp_fromNumber:0 toNumber:100 duration:1.5 animationType:PPCounterAnimationTypeEaseOut attributedFormatBlock:^NSAttributedString *(CGFloat number) {
        
    // 此处自由设置富文本属性的内容
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@""];
    return attributedString;
} completeBlock:^{
        
    // 完成的回调
}];

```

以上就是PPCounter的简单使用方法,更详细的用法请看demo

###你的star是我持续更新的动力!
===
##CocoaPods更新日志
* 2016.10.19(tag:0.1.0)--初始化到CocoaPods;

##联系方式:
* Weibo : @CoderPang
* Email : jkpang@outlook.com
* QQ : 2406552315

##许可证
PPCounter 使用 MIT 许可证，详情见 LICENSE 文件。

