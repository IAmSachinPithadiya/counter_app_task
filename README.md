# counter_app

# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset


# Problem

- Count which was reseting while scrolling the ListView is caused by the functionality of ListView,
  In ListView list of widgets which is currently visible on the screen will have proper state of variable.
  because while we scroll it will destroy the widget which is not currently visible on screen.
  It'll re irender the widget when we scroll back to top/bottom so variable count will be initialized with 0 again.

# Solution

- To manage state of every list count I've taken list of int where we generating 100 list with initial value 0,
  and maintaining the state of that variable out side of the ListWidget.
- So this solution work according to requirement which we need to maintain state of every list count.


# Steps
- If you need to check old code uncomment list.dart import in main.dart file and comment list_widget.dart
- Same if you want to check latest code comment list.dart import and uncomment list_widget.dart

# Note

- Also imroved the UI so when we're interacting with, it looks good.