/**
 * Applies a closure to a variable and returns the variable.
 * This function is useful for applying a series of attribute changes to a variable in a concise way.
 * - Parameters:
 *   - item: The variable to apply the closure to.
 *   - update: The closure that applies the attribute changes to the variable.
 * - Returns: The variable after the attribute changes have been applied.
 *
 * Example usage:
 * let rectangle = with(CGRect(x: 0, y: 0, width: 100, height: 100)) {
 *     $0 = $0.offsetBy(dx: 20, dy: 20)
 *     $0 = $0.insetBy(dx: 10, dy: 10)
 * }
 * Swift.print(rectangle) // Prints "X:30.0, y:30.0, width:80.0, height:80.0"
 */
@discardableResult // Avoids xcode compiler warnings if result is not used
public func with<T>(_ item: T, update: (inout T) throws -> Void) rethrows -> T {
   var item = item
   try update(&item)
   return item
}
