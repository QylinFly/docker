# docker

## docker-composer

## nginx

## php

## vpn --oo

```
https://www.cnblogs.com/zhangjk1993/p/5066771.html#_label1_3
```

```
**[terminal]
**[prompt foo@joe]**[path ~]**[delimiter  $ ]**[command ./myscript]
Normal output line. Nothing special here...
But...
You can add some colors. What about a warning message?
**[warning [WARNING] The color depends on the theme. Could look normal too]
What about an error message?
**[error [ERROR] This is not the error you are looking for]

```


# GitBook配置
记录Gitbook的一些配置信息

* [title - 标题](#title)
* [author - 作者信息](#author)
* [description - 书本描述](#description)
* [language - 使用的语言](#language)
* [gitbook - 指定gitbook版本](#gitbook)
* [root - 指定存放 GitBook 文件的根目录](#root)
* [links - 在侧边栏添加链接](#links)
* [styles - 自定义样式](#styles)
* [plugins - 插件](#plugins)
* [pluginsConfig - 插件配置](#pluginsconfig)
* [structure - 设置 Readme, Summary, Glossary等对应的文件](#structure)

## title
设置书本的标题
```json
"title" : "Gitbook Use"
```

## author
作者的相关信息
```json
"author" : "zhangjikai"
```

## description
本书的简单描述
```json
"description" : "记录Gitbook的配置和一些插件的使用"
```

## language
Gitbook使用的语言, 版本2.6.4中可选的语言如下：
```
en, ar, bn, cs, de, en, es, fa, fi, fr, he, it, ja, ko, no, pl, pt, ro, ru, sv, uk, vi, zh-hans, zh-tw
```
配置使用简体中文
```
"language" : "zh-hans",
```
## gitbook
指定使用的gitbook版本
```json
"gitbook" : "3.2.2",
"gitbook" : ">=3.0.0"
```

## structure
指定 Readme、Summary、Glossary 和 Languages 对应的文件名，下面是这几个文件对应变量以及默认值：

| 变量 | 含义和默认值 |
|:----|:----|
|`structure.readme` | `Readme file name (defaults to README.md)` |
|`structure.summary` | `Summary file name (defaults to SUMMARY.md)`|
|`structure.glossary`| `Glossary file name (defaults to GLOSSARY.md)` |
|`structure.languages`| `Languages file name (defaults to LANGS.md)`|

