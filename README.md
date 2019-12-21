# WaterFallView
[![Build Status](https://travis-ci.com/TomFrank/WaterFallView.svg?branch=master)](https://travis-ci.com/TomFrank/WaterFallView) ![Platforms](https://img.shields.io/badge/platform-iOS-blue.svg) ![](https://img.shields.io/badge/Swift-5.1-orange.svg) [![License: MIT](http://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/TomFrank/WaterFallView/blob/master/LICENSE)

A Waterfall View For SwiftUI

<img src="./WaterFallViewSample/Images/ScreenShot.png" style="zoom:20%;" />

## Requirements

- iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+

- Xcode 11.0+

- Swift 5.1+

## Installation

###  Swift Package Manager

Using Xcode 11, go to `File -> Swift Packages -> Add Package Dependency` and enter https://github.com/TomFrank/WaterFallView

## Usage

**Example**

A waterfall views of type `Card` from a collection of `Identifiable` data .

```swift
ScrollView {
    WaterFallView(cards) {
      CardView(card: $0)
    }
}
```

## Credits

WaterFallView was inspired by the following projects:

* WaterfallGrid - https://github.com/paololeonardi/WaterfallGrid

* The SwiftUI Lab - https://swiftui-lab.com

## License

WaterFallView is available under the MIT license. See the [LICENSE](LICENSE) file for more info.



