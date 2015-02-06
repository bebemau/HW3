# HW3

How was your experience making this app?
Spent a lot of times researching the following:
1.  how to access properties of an object in an array, guess i should have done the way you did, stripping out the titles into another array.
2.  how to bind objects in an array to the table view
But just like the last homework, feels great when i finally got it working.  A good exercise overall.

What resources did you find helpful?
http://adventuresdotnet.blogspot.com/2012/05/translating-objective-c-to-c-part-1-of.html
http://kurrytran.blogspot.com/2011/10/ios-5-storyboard-uitableview-tutorial.html
http://stackoverflow.com/questions/22816110/error-message-incompatible-pointer-to-integer-conversion-sending-nsarray-st

One well-formed question or observation about the app, technologies used, or related topics.
1.  I am still a bit confused about typing a variable(or property).  You have said in objective c always use pointers, is it true for only objects?  And primitive types ie booleans, integers do not use pointers? 
2.  This is just a weird behavior i saw and got me really frustrated.  While I was debugging why my array is not binding to the table, i wanted to check the value of the row variable.  I see it in the object inspector(dont know what else to call it, the window that appears in debug mode at the bottom left) showing a value of 0, but when I do a po in the output window, it shows nil.  Why is that?
