# With 💗
![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg) ![platform](https://img.shields.io/badge/Platform-iOS-blue.svg) ![Lang](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
[![Tests](https://github.com/eonist/With/actions/workflows/Tests.yml/badge.svg)](https://github.com/eonist/With/actions/workflows/Tests.yml)
[![codebeat badge](https://codebeat.co/badges/a8f6fe0d-17b0-4d17-a781-c6d5b8930b2a)](https://codebeat.co/projects/github-com-eonist-with-master)

### What is it
An extension that let's you manipulate an object with a closure

### Description: 
With is a Swift extension that lets you manipulate an object with a closure. It provides a concise and expressive way to modify an object's properties without having to create temporary variables or write boilerplate code.

### How does it work
With works by taking an object and a closure as input. The closure takes an inout reference to the object, allowing you to modify its properties directly. The modified object is then returned by the with function.
See [Example](https://github.com/eonist/With#example)

### How can I get it
You can add With to your project using Swift Package Manager by adding the following line to your Package.swift file: `.package(url: "https://github.com/eonist/With.git", branch: `"master")`

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

**Example for with Using Key Paths:**
```swift
// Using with function with key paths to configure a UILabel
let label = UILabel()
  .with(\.textColor, setTo: .red)
  .with(\.text, setTo: "Hello World")
  .with(\.textAlignment, setTo: .center)
  .with(\.layer.cornerRadius, setTo: 5)
```

**Example for withMap:**

```swift
// Using withMap to configure DateFormatter and get a formatted date string
let dateString: String = withMap(DateFormatter()) {
  $0.dateStyle = .medium
  $0.timeStyle = .none
  return $0.string(from: Date())
}
Swift.print(dateString) // Outputs: Jan 1, 2022
```


### Credit:

Thanks [https://github.com/sindresorhus](https://github.com/sindresorhus) for teaching me this JavaScript-esque super power 💪

### Todo:
- Add examples for withMap and with that uses keypath to readme
