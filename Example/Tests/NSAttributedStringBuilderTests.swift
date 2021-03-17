import XCTest
import MobilliumBuilders

class NSAttributedStringBuilderTests: XCTestCase {
        
    func testFont() {
        let font = UIFont.systemFont(ofSize: 12)
        let attributes = NSAttributedStringBuilder()
            .font(font)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(font, attributes[.font] as? UIFont)
    }
    
    func testParagraphStyle() {
        let paragraphStyle = NSMutableParagraphStyle()
        let attributes = NSAttributedStringBuilder()
            .paragraphStyle(paragraphStyle)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(paragraphStyle, attributes[.paragraphStyle] as? NSMutableParagraphStyle)
    }
    
    func testForegroundColor() {
        let foregroundColor = UIColor.white
        let attributes = NSAttributedStringBuilder()
            .foregroundColor(foregroundColor)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(foregroundColor, attributes[.foregroundColor] as? UIColor)
    }
    
    func testBackgroundColor() {
        let backgroundColor = UIColor.red
        let attributes = NSAttributedStringBuilder()
            .backgroundColor(backgroundColor)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(backgroundColor, attributes[.backgroundColor] as? UIColor)
    }
    
    func testKern() {
        let kern: Int = 3
        let attributes = NSAttributedStringBuilder()
            .kern(kern)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(kern, attributes[.kern] as? Int)
    }
    
    func testStrikethrough() {
        let style = NSUnderlineStyle.patternSolid
        let color = UIColor.gray
        let attributes = NSAttributedStringBuilder()
            .strikethrough(style: style, color: color)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 2)
        XCTAssertEqual(style.rawValue, attributes[.strikethroughStyle] as? Int)
        XCTAssertEqual(color, attributes[.strikethroughColor] as? UIColor)
    }
    
    func testStrikethroughStyle() {
        let strikethroughStyle = NSUnderlineStyle.patternDash
        let attributes = NSAttributedStringBuilder()
            .strikethroughStyle(strikethroughStyle)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(strikethroughStyle.rawValue, attributes[.strikethroughStyle] as? Int)
    }
    
    func testStrikethroughColor() {
        let strikethroughColor = UIColor.blue
        let attributes = NSAttributedStringBuilder()
            .strikethroughColor(strikethroughColor)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(strikethroughColor, attributes[.strikethroughColor] as? UIColor)
    }
    
    func testUnderline() {
        let style = NSUnderlineStyle.patternDashDot
        let color = UIColor.cyan
        let attributes = NSAttributedStringBuilder()
            .underline(style: style, color: color)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 2)
        XCTAssertEqual(style.rawValue, attributes[.underlineStyle] as? Int)
        XCTAssertEqual(color, attributes[.underlineColor] as? UIColor)
    }
    
    func testUnderlineStyle() {
        let underlineStyle = NSUnderlineStyle.patternDot
        let attributes = NSAttributedStringBuilder()
            .underlineStyle(underlineStyle)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(underlineStyle.rawValue, attributes[.underlineStyle] as? Int)
    }
    
    func testUnderlineColor() {
        let underlineColor = UIColor.yellow
        let attributes = NSAttributedStringBuilder()
            .underlineColor(underlineColor)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(underlineColor, attributes[.underlineColor] as? UIColor)
    }
    
    func testStroke() {
        let color = UIColor.brown
        let width: Int = 1
        let attributes = NSAttributedStringBuilder()
            .stroke(color: color, width: width)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 2)
        XCTAssertEqual(color, attributes[.strokeColor] as? UIColor)
        XCTAssertEqual(width, attributes[.strokeWidth] as? Int)
    }
    
    func testStrokeColor() {
        let strokeColor = UIColor.green
        let attributes = NSAttributedStringBuilder()
            .strokeColor(strokeColor)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(strokeColor, attributes[.strokeColor] as? UIColor)
    }
    
    func testStrokeWidth() {
        let strokeWidth: Int = 3
        let attributes = NSAttributedStringBuilder()
            .strokeWidth(strokeWidth)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(strokeWidth, attributes[.strokeWidth] as? Int)
    }
    
    func testLink() {
        guard let link = URL(string: "https://cocoapods.org") else {
            XCTAssert(false)
            return
        }
        let attributes = NSAttributedStringBuilder()
            .link(link)
            .build()
        
        XCTAssertFalse(attributes.isEmpty)
        XCTAssertEqual(attributes.count, 1)
        XCTAssertEqual(link, attributes[.link] as? URL)
    }
    
}