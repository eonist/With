import Foundation
/**
 * Works on an object or value type subject, returning an aribitrary object/value from the closure
 * - Note: The subject is still mutated
 * - Note: SubjectT form that can return an arbitrary value from the closure (instead of the value passed in):
 * - Returns: MARK: Returning Arbitrary Value
 * let dateString = withMap(DateFormatter()) {
 *    // initializes a `DateFormatter`, configures it, and uses it to calculate a
 *    // `String` which is the only thing we want to hang onto
 *    $0.dateStyle = .medium
 *    $0.timeStyle = .none
 *    $0.locale = Locale(identifier: "en_US")
 *    let currentDate = Date()
 *    return $0.string(from: currentDate)
 * }
 */
@inlinable
public func withMap<SubjectT, ReturnT>(_ subject: SubjectT, _ transform: (inout SubjectT) throws -> ReturnT) rethrows -> ReturnT {
   var subject = subject
   return try transform(&subject)
}
