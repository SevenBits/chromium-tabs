#import "MyBrowser.h"
#import "MyTabContents.h"

@implementation MyBrowser

// This method is called when a new tab is being created. We need to return a
// new CTTabContents object which will represent the contents of the new tab.
-(CTTabContents*)createBlankTabBasedOn:(CTTabContents*)baseContents {
  // Create a new instance of our tab type
  return [[MyTabContents alloc]
      initWithBaseTabContents:baseContents];
}

// This needs to return a toolbar controller initialized with a nib.
// Since we have no toolbar we can return nil for now.
- (CTToolbarController *)createToolbarController {
	return nil;
}

@end
