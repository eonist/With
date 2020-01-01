import Foundation

protocol With {}
/**
 * - Note: we can extend AnyObject, but then the old with doesnt work
 * - Note: rember to extend the type you want to use with on: extension UIView: With {}
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
