import Foundation

public extension String {
  func isNumber() -> Bool {
    return match(Regex.number.pattern)
  }
}
