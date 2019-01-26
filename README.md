# Chromium Tabs

Chromium Tabs is a [Cocoa](http://developer.apple.com/cocoa/) framework for building applications that works like [Chromium](http://www.chromium.org/)'s window system.

- An *application* has multiple *windows*
- Each *window* represents a unit of *tabs*
- Each *tab* represents a stateful view
- Each *tab* can be freely dragged between *windows*

> **Important:** This is currently work in progress and the framework API will change often.

Requirements: OS X 10.10 or later.

## Usage

The framework is distributed with an [`@rpath`](http://www.codeshorts.ca/2007/nov/01/leopard-linking-making-relocatable-libraries-movin) which means it should be embedded into your applications' Contents/Frameworks directory. In Xcode you can add a new "Copy Files" action with the "Frameworks" destination to your target.

As an alternative, with Xcode 4, you can create a new workspace which includes your project and `chromium-tabs.xcodeproj`. Once this is done, `ChromiumTabs.framework` will be available for linking like any other built-in library.

Then you need to do at least two things:

1. `#import <ChromiumTabs/ChromiumTabs.h>`
2. `[[CTBrowser browser] newWindow]` when your application has started (e.g. in the application delegate's `applicationDidFinishLaunching:`)

The example application (in `examples/simple-app/`) illustrates basic usage and can be inspected while you drink coffee. It looks like this:

<img src="https://user-images.githubusercontent.com/2482736/51782091-e81d8780-20f0-11e9-86b2-64d21305d715.png" alt="The sample application, showing a window with a tab">

When building a "real" application you will need to subclass at least the `CTBrowser` class which manages tabs and their content. The example application do this at a very basic level (provides custom tab content).

## Download

Visit the [download section on GitHub](http://github.com/rsms/chromium-tabs/downloads) to download the latest release of the framework and the example application.

## Building

1. Check out (or download) the source code
2. Open `chromium-tabs.xcodeproj` in [Xcode](http://developer.apple.com/tools/xcode/)
3. Choose your target and hit "Build"

There is also an optional example application in the Xcode project. You build it by selecting the "Sample App" target.

## License

See the LICENSE file for details.
