import XCTest
@testable import FDALogger

final class LoggerTests: XCTestCase {

    // MARK: - Vars

    private var sut: FDALogger!

    // MARK: - Lifecycle

    override func setUp() {
        sut = FDALogger()
    }

    override func tearDown() {
        sut = nil
    }

    // MARK: - Tests

    func test_networktLog() {
        // Given
        let category = LogCategory.network(.default)
        let content = "Test content"

        // When
        sut.log(category: category, content: content)

        // Then
        XCTAssertEqual(sut.logs.count, 1)
        XCTAssertEqual(sut.logs.first, "\(category.logCategory) - \(content)")
    }

    func test_keychainLog() {
        // Given
        let category = LogCategory.keychain(.default)
        let content = "Test content"

        // When
        sut.log(category: category, content: content)

        // Then
        XCTAssertEqual(sut.logs.count, 1)
        XCTAssertEqual(sut.logs.first, "\(category.logCategory) - \(content)")
    }

    func test_routerLog() {
        // Given
        let category = LogCategory.router(.default)
        let content = "Test content"

        // When
        sut.log(category: category, content: content)

        // Then
        XCTAssertEqual(sut.logs.count, 1)
        XCTAssertEqual(sut.logs.first, "\(category.logCategory) - \(content)")
    }

    func test_coreDataLog() {
        // Given
        let category = LogCategory.coreData(.default)
        let content = "Test content"

        // When
        sut.log(category: category, content: content)

        // Then
        XCTAssertEqual(sut.logs.count, 1)
        XCTAssertEqual(sut.logs.first, "\(category.logCategory) - \(content)")
    }
}
