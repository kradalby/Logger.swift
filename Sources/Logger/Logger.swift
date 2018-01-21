import Foundation

import Rainbow

public enum LogLevel {
    case ERROR
    case WARNING
    case INFO
    case DEBUG
    case TRACE
}

public struct Logger {
    public let logLevel: LogLevel
    
    public func error(_ message: Any) {
        print("[ERROR] ".red + "\(message)")
    }
    public func warning(_ message: Any) {
        if logLevel == .TRACE ||
            logLevel == .DEBUG ||
            logLevel == .INFO ||
            logLevel == .WARNING {
        print("[WARNING] ".yellow + "\(message)")
        }
    }
    public func info(_ message: Any) {
        if logLevel == .TRACE ||
            logLevel == .DEBUG ||
            logLevel == .INFO {
        print("[INFO] ".green + "\(message)")
        }
    }
    public func debug(_ message: Any) {
        if logLevel == .TRACE ||
            logLevel == .DEBUG {
            print("[DEBUG] ".lightCyan + "\(message)")
        }
    }
    public func trace(_ message: Any) {
        if logLevel == .TRACE {
            print("[TRACE] ".white + "\(message)")
        }
    }

    public init () {
        self.logLevel = LogLevel.INFO
    }
    
    public init(_ logLevel: LogLevel) {
        self.logLevel = logLevel
    }
}


