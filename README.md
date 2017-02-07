# Custom In App Keyboard

Recently, I was asked by the CEO of my project to build a custom numeric keyboard for the iOS app. It’s an iPad app, and as you might know, even though there is this “numeric keyboard” where you have the numeric keys above and the alphabet below, they wanted it to be completely numeric. Well, to be more precise, they wanted it to be a “phone keyboard”, complete with “+”, “(” and “)” symbols, a custom keyboard for entering phone numbers. Even though this might seem unnecessary, there are situations where it is actually useful. In this case, the reason was allowing non-technical people to enter phone numbers, distraction-free, avoiding the distraction or frustration of trying to enter symbols or alphabet letters.

Whatever the reason, ever since iOS 8 introduced custom keyboards and apps like SwiftKey started to appear, there is a lot of information out there on how to build custom keyboard extensions. However, we should really differentiate between these and In-App keyboards, because they cover two completely different scenarios.

In-App keyboards are those that are embedded and constrained to your application, but they are ready to use without any interaction other than opening the App. Custom iOS 8 keyboards extensions, on the other hand, work as general keyboards you can enable and use in the iOS device globally, but they are not well suited for scenarios like the one I described, because they need to be enabled from the Settings App in order to be available in your App, and of course you cannot restrict them to a limited set of fields.

This is the sample project for a post in my blog (https://digitalleaves.com/blog/), where we will be talking about this scenario, in which you need to implement a custom keyboard, just for your App, that will appear only in some fields or text areas that you specify, and no external configuration is needed, they work right away.

![In App Keyboard animated GIF](http://digitalleaves.com/wp-content/uploads/2016/12/customKeyboardiPad.gif)
