# With 💗

### What is it:
An extension that let's you manipulate an object with a closure

### How does it work:
See example

### How can I get it:
- Carthage: `github "eonist/With" "master"`
- Cocoapods: `Coming soon`
- Manual installation: Open `.xcodeproj`

### Example:

```swift
//EXAMPLE 1:
let rectangle = with(CGRect.init(x: 0, y: 0, width: 100, height: 100)) {
  $0 = $0.offsetBy(dx: 20, dy: 20)
  $0 = $0.insetBy(dx: 10, dy: 10)
}
Swift.print(rectangle)// X:30.0, y:30.0, width:80.0, height:80.0

//EXAMPLE 2:
let color = with(UIColor.init(red: 50, green: 100, blue: 0, alpha: 0.9)) { ( col:inout UIColor) -> Void  in
  col = col.withAlphaComponent(0.2)
}
Swift.print(color.cgColor.alpha)//0.2
```

### Credit:

Thanks [https://github.com/sindresorhus](https://github.com/sindresorhus) for teaching me this JavaScript-esque super power 💪
