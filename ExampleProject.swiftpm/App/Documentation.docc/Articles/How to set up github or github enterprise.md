# How to set up documentation of project on github

Manual how to set up project to be able to use github for static hosting

## Overview
### Requirements
- Xcode 13.3 and 
- Package.swift set to swift-tools: 5.6  with added package:
``` swift 
.package(url: "https://github.com/apple/swift-docc-plugin", branch: "main")
```
> Note: Currently this set up is not production ready and might differ in future.
This set up is for github or github enterprise.

### Preview documentation: 
```swift 
swift package --disable-sandbox preview-documentation --target [NAME OF TARGET]
```
## Steps
### 1. Set local project for github pages
1. Open terminal in the folder where is Package.swift file
2. run command below with modified arguments based on your setup: 
```swift
swift package --allow-writing-to-directory ./docs \
    generate-documentation --target [NAME OF TARGET] --disable-indexing \
    --output-path ./docs \
    --transform-for-static-hosting \
    --hosting-base-path [base path url]
```

> Important: 
[base path url] is always the part of url after .com or .io (github) ! The documentation might not work on github enterprise due to wrongly set path.

### 2. Set new branch for github
1. Set up branch **gh-pages** 
2. Commit and push changes from the steps before.

### 3. Set up github to host the documentation
1. Enable github page hosting in setting of your github repository.
2. The default branch for hosting shoud be gh-pages and the folder where shoud github look is **/docs**
3. Then you should be able to see your documentation as in the xcode.🎉

### Resources
[docC plugin documentation](https://apple.github.io/swift-docc-plugin/documentation/swiftdoccplugin/)
