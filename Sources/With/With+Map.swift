/**
 * Applies a closure to a variable and returns an arbitrary object/value from the closure.
 * This function is useful for initializing and configuring an object, and then returning a specific value from it.
 * - Parameters:
 *   - subject: The variable to apply the closure to.
 *   - transform: The closure that initializes and configures the object, and returns the desired value.
 * - Returns: The desired value returned from the closure.
 *
 * Example usage:
 * let dateString = withMap(DateFormatter()) {
 *     $0.dateStyle = .medium
 *     $0.timeStyle = .none
 *     $0.locale = Locale(identifier: "en_US")
 *     let currentDate = Date()
 *     return $0.string(from: currentDate)
 * }
 * Swift.print(dateString) // Prints something like "Jan 1, 2022"
 */
@inlinable
public func withMap<SubjectT, ReturnT>(_ subject: SubjectT, _ transform: (inout SubjectT) throws -> ReturnT) rethrows -> ReturnT {
   var subject = subject
   return try transform(&subject)
}
