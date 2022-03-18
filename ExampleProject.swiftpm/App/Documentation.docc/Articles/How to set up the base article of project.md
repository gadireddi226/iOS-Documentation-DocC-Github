# How to set up the base article of project

Manual how to set up properly the base article(root of all files in documentation).

## Overview
> Note: Before you start I would recommend to look at [Syntax of DocC MarkDown](https://developer.apple.com/documentation/xcode/formatting-your-documentation-content)


The autogenerated document usually looks like this in editor: 
```swift
# NewArticle

Summary

## Overview

Text

## Topics

### Group

- ``Symbol``

```
**Steps how to start:**
1. The first line of article describes the Title of article. In addition it is used as a symbol link too. The format of such base article should look like below.
2. Then summary line and overview works same as in the classic Apple documentation site.
3. Then there are topics, which show how the things(Articles, Classes, Structs, etc..) are grouped in the documentation. You can modify them as you like.

> Important: syntax of article title on first line: #\``NameOfYourProject``

> Warning: NameOfYourProject is same as the project name, if you have different name or wrong formatting, it will be treated as normal article.
