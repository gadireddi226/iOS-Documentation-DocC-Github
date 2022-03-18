# How to set up extension file

Manual for creating extension file

## Overview

### What is extension file?
Extension file can be used to have documentation separated from the code(class, struct, enum etc..). 

> Note: If developer right clicks on the object it will open list of action and he can navigate to the documentation.

> Experiment: The extension can be used to override the source documentation or append the source documentation to the documentation in the extension.

### How to create extension:
1. In Xcode -> File -> New File -> Pick Extension

### Link object to the extension:
Once you create the extension file you will see this:
```swift
# ``Symbol``

Summary

## Overview

Text

## Topics

### Group

- ``Symbol``
```
1. Replace the default name **Symbol** with the name of the project separated by **/** and the **name of the object** that you want to document.
2. In my case I used **ExampleProject/AlarmViewModel**

> Tip: If you already have a documentation in the source code, you can give special behaviour to the extension, if it should override the source documentation or append it. More here [Adding suplemental content to documentation catalog](https://developer.apple.com/documentation/xcode/adding-supplemental-content-to-a-documentation-catalog)


### Example Extension 
- ExampleProject/App/Documentation/Extensions/AlarmViewModel
