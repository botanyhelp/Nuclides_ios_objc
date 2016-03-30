# Nuclides_ios_objc

Nuclides iOS 7 iphone application that shows data for every isotope of every element.  The user selects an element and gets to see data about every isotope of the selected element.  

These codes can be used to construct an iOS application that is much like the Android application named Nuclides and available on Google Play Store.  This iOS application "Nuclides" is NOT on the Apple App Store.  It was built with xcode for ios 7.  

There are almost 100 screenshots of construction in xcode/ios7 that would allow reconstruction.  The project page for [Nuclides_ios_objc](github.com/botanyhelp/Nuclides_ios_objc) has these constructio details.  There may be text description of the description elsewhere.  Looking over screenshots is tedious but possibly less tedious than reading mediocre text description of xCode "click this, press that" operations. 

The architecture of this program is simple and does not use Core Data.  The data is shoved into application code.  In particular, in the file **nuclidedatacontroller.m** where the data is setup:

-(void) initializeDefaultNuclides{}  

Its fast and works nicely.  

This program could relatively easily be ported to Swift.  Maybe someday.  The program suffers from a condition where it could be better deployed as an Apple iBook or another form as a book.  Except for selecting from a list of elements (with your thumb on the phone) and scrolling through the data, there is not much "appness" to this app, not much functionality.  On the other hand, the data is good and could be very useful in the form of an app. 

