import Foundation

protocol With {}
/**
 * Allows the developer to clearly separate the code that initializes a value from the code that uses it, without the burden of defining a factory method.
 * - Note: we can extend AnyObject, but then the old with doesnt work
 * - Note: rember to extend the type you want to use with on: extension UIView: With {}
 * - Note: ref: https://github.com/vincent-pradeilles/swift-tips#implementing-the-builder-pattern-with-keypaths
 * ## Examples:
 * let label = UILabel()
 *    .with(\.textColor, setTo: .red)
 *    .with(\.text, setTo: "Foo")
 *    .with(\.textAlignment, setTo: .right)
 *    .with(\.layer.cornerRadius, setTo: 5)
 */
extension With where Self: AnyObject {
   @discardableResult
   func with<T>(_ property: ReferenceWritableKeyPath<Self, T>, setTo value: T) -> Self {
      self[keyPath: property] = value
      return self
   }
}
