import Foundation

import Rainbow

public enum LogLevel: Int {
    case ERROR = 1
    case WARNING = 2
    case INFO = 3
    case DEBUG = 4
    case TRACE = 5
    

}

public struct Logger {
    public let logLevel: LogLevel
    
    public func error(_ message: Any) {
        print("[ERROR] ".red + "\(message)")
    }
    public func warning(_ message: Any) {
        if logLevel.rawValue >= 2 {
        print("[WARNING] ".yellow + "\(message)")
        }
    }
    public func info(_ message: Any) {
        if logLevel.rawValue >= 3 {
        print("[INFO] ".green + "\(message)")
        }
    }
    public func debug(_ message: Any) {
        if logLevel.rawValue >= 4 {
            print("[DEBUG] ".lightCyan + "\(message)")
        }
    }
    public func trace(_ message: Any) {
        if logLevel.rawValue >= 5 {
            print("[TRACE] ".white + "\(message)")
        }
    }

    public init () {
        self.logLevel = LogLevel.INFO
    }
    
    public init(_ logLevel: LogLevel) {
        self.logLevel = logLevel
    }
    
    public init(_ logLevel: Int) {
        switch logLevel {
        case 1:
            self.logLevel = .ERROR
        case 2:
            self.logLevel = .WARNING
        case 3:
            self.logLevel = .INFO
        case 4:
            self.logLevel = .DEBUG
        case 5:
            self.logLevel = .TRACE
        default:
            self.logLevel = .INFO
        }
    }
}


