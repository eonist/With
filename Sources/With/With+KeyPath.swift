import Foundation
/**
 * A protocol that allows the `with` extension to be used on any `AnyObject`.
 */
protocol With {}

/**
 * An extension that allows for concise initialization and modification of properties on an `AnyObject`.
 * - Remark: This extension separates the code that initializes a value from the code that uses it, without the burden of defining a factory method.
 * - Note: This extension uses key paths to set the value of the specified property.
 * - Parameters:
 *   - property: The key path of the property to set.
 *   - value: The value to set the property to.
 * - Returns: The modified `AnyObject`.
 *
 * Example usage:
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
