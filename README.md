# Cocoa Configurations

A configurations control for customizable inspector panels that mimic the Xcode inspector style as close as possible.

Existing implementations trying to achieve the same already existed but lacked in details and quality.

## Features

- A view based `NSOutlineView`. This makes it easy to load custom inspector views from XIBs.
- Xcode color scheme and types
- Entire section header is clickable, in addition to just the disclosure indicator. 

One way this implementation differs from the Xcode inspector is it's collapse animation, which is standard functionality of the `NSOutlineView` and actually looks nicer.

![Configuration Example][config-example]

## Ways to achieve this look


[config-example]: http://joris.kluivers.nl/images/config-example.png 
