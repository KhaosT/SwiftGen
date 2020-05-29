// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(OSX)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct ColorName {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  internal enum Colors {
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#339666"></span>
    /// Alpha: 100% <br/> (0x339666ff)
    internal static let articleBody = ColorName(rgbaValue: 0x339666ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff66cc"></span>
    /// Alpha: 100% <br/> (0xff66ccff)
    internal static let articleFootnote = ColorName(rgbaValue: 0xff66ccff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#33fe66"></span>
    /// Alpha: 100% <br/> (0x33fe66ff)
    internal static let articleTitle = ColorName(rgbaValue: 0x33fe66ff)
    /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
    /// Alpha: 80% <br/> (0xffffffcc)
    internal static let `private` = ColorName(rgbaValue: 0xffffffcc)
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

// swiftlint:disable operator_usage_whitespace
internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let components = rgbaValue.normalizedRGBAComponents
    self.init(red: components[0], green: components[1], blue: components[2], alpha: components[3])
  }
}
// swiftlint:enable operator_usage_whitespace

fileprivate extension UInt32 {
  var rgbaComponents: [CGFloat] {
    let shifts: [UInt32] = [
      self >> 24, // red
      self >> 16, // green
      self >> 8,  // blue
      self        // alpha
    ]
    return shifts.map {
      CGFloat($0 & 0xff)
    }
  }

  var normalizedRGBAComponents: [CGFloat] {
    rgbaComponents.map { $0 / 255.0 }
  }
}

internal extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
