# With 💗
![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg) ![platform](https://img.shields.io/badge/Platform-iOS-blue.svg) ![Lang](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![codebeat badge](https://codebeat.co/badges/a8f6fe0d-17b0-4d17-a781-c6d5b8930b2a)](https://codebeat.co/projects/github-com-eonist-with-master)
[![Github actions badge](https://badgen.net/github/checks/eonist/With?icon=github&label=Tests)](https://github.com/eonist/With/actions)

### What is it
An extension that let's you manipulate an object with a closure

### How does it work
See [Example](https://github.com/eonist/With#example)

### How can I get it
- SPM: `"https://github.com/eonist/With.git"` branch: `"master"`
- Manual installation: Open `.xcodeproj`

### Example:

```swift
// Example 1:
let rectangle: CGRect = with(.init(x: 0, y: 0, width: 100, height: 100)) {
  $0 = $0.offsetBy(dx: 20, dy: 20)
  $0 = $0.insetBy(dx: 10, dy: 10)
}
Swift.print(rectangle) // X:30.0, y:30.0, width:80.0, height:80.0

// Example 2:
let color: UIColor = with(.init(red: 50, green: 100, blue: 0, alpha: 0.9)) { ( col:inout UIColor) -> Void  in
  col = col.withAlphaComponent(0.2)
}
Swift.print(color.cgColor.alpha) // 0.2

// Example 3:
var size: CGSize = .init(width: 50, height: 40)
with(size) {
  $0.width = 100
  $0.height = 50
}
Swift.print(size)//100, 50

// Example 4:
func createImageView() -> UIImageView {
   return with(.init()){
      $0.image = UIImage(named: "someGraphic")
      self.addSubview($0)
   }
}
createImage() // Adds image to view
```

### Credit:

Thanks [https://github.com/sindresorhus](https://github.com/sindresorhus) for teaching me this JavaScript-esque super power 💪

### Todo:
- Add examples for withMap and with that uses keypath to readme
