import XCTest
import SwiftUI
@testable import CodeEditSymbols

final class CodeEditSymbolsTests: XCTestCase {

    private let symbolNames = [
        "vault",
        "vault.fill",
        "commit",
        "checkout",
        "branch",
        "breakpoint",
        "breakpoint.fill",
        "chevron.up.chevron.down",
        "github",
        "doc.java",
        "doc.javascript",
        "doc.json",
        "doc.python",
        "doc.ruby",
        "square.split.horizontal.plus",
        "square.split.vertical.plus",
    ]

    func testBundledSymbolsAreLoadable() {
        for symbolName in symbolNames {
            XCTAssertNotNil(NSImage.symbol(named: symbolName), "\(symbolName) should be loadable from Bundle.module")
        }
    }

    func testNSImageConvenienceSymbolsAreLoadable() {
        XCTAssertNotNil(NSImage.vault)
        XCTAssertNotNil(NSImage.vaultFill)
        XCTAssertNotNil(NSImage.commit)
        XCTAssertNotNil(NSImage.checkout)
        XCTAssertNotNil(NSImage.branch)
        XCTAssertNotNil(NSImage.breakpoint)
        XCTAssertNotNil(NSImage.breakpointFill)
        XCTAssertNotNil(NSImage.chevronUpChevronDown)
        XCTAssertNotNil(NSImage.github)
        XCTAssertNotNil(NSImage.docJava)
        XCTAssertNotNil(NSImage.docJavascript)
        XCTAssertNotNil(NSImage.docJson)
        XCTAssertNotNil(NSImage.docPython)
        XCTAssertNotNil(NSImage.docRuby)
        XCTAssertNotNil(NSImage.squareSplitHorizontalPlus)
        XCTAssertNotNil(NSImage.squareSplitVerticalPlus)
    }

    func testSwiftUIImageConvenienceSymbolsAreAvailable() {
        _ = Image.vault
        _ = Image.vaultFill
        _ = Image.commit
        _ = Image.checkout
        _ = Image.branch
        _ = Image.breakpoint
        _ = Image.breakpointFill
        _ = Image.chevronUpChevronDown
        _ = Image.github
        _ = Image.docJava
        _ = Image.docJavascript
        _ = Image.docJson
        _ = Image.docPython
        _ = Image.docRuby
        _ = Image.squareSplitHorizontalPlus
        _ = Image.squareSplitVerticalPlus
    }
}
