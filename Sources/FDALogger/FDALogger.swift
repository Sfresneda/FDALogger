//
//  FDALogger.swift
//
//  Created by Sergio Fresneda on 23/9/23.
//

import OSLog
import Foundation

/// Logger manager
public final class FDALogger {

    /// Shared Instance
    public static var shared: FDALogger = FDALogger()

    // MARK: Vars

    /// Logger instance
    private var logger: Logger

    /// Logs already registered
    public private(set) var logs: [String] = []

    // MARK: Lifecycle

    /// Init
    /// - Parameter logger: Logger instance, by default is `Logger()`
    public init(logger: Logger = Logger()) {
        self.logger = logger
    }
}

// MARK: - Public
public extension FDALogger {

    /// Log a message with dependency of `isEnabled` value
    /// - Parameters:
    ///   - category: Loggable category, see `LogCategory`
    ///   - content: Message to log
    func log(category: Loggable, content: String) {
        let logContent = "\(category.logCategory) - \(content)"

        handleLog(type: category.logType, content: logContent)
    }
}

// MARK: - Private
private extension FDALogger {

    /// Handle the type of log, this method also store the log on local `logs` property
    /// - Parameters:
    ///   - type:  Log type, see `OSLogType`
    ///   - content:  Message to log
    func handleLog(type: OSLogType, content: String) {
        logger.log(level: type, "\(content)")

        logs.append(content)
    }
}
