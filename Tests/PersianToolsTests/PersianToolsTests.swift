import Testing
import PersianTools

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    // Swift Testing Documentation
    // https://developer.apple.com/documentation/testing
}


@Test("Fixing arabic characters in persian language")
func testPersianText() async throws {
    let example = "مي خواهم 123"
    
    let expected = "می خواهم ۱۲۳"
    
    let converted = PersianConverter.convertToStandardPersian(example)
    
    #expect(converted == expected)
}

@Test("Numbers test")
func testNumbers() async throws {
    let orginal = "1234567890"
    let expected = "۱۲۳۴۵۶۷۸۹۰"
    
    var result = PersianConverter.convertToStandardPersian(orginal)
    
    #expect(result == expected)
    
    let configutaion = ConversionConfiguration(numbersOptions: .keep, convertableCharacters: .default)
    result = PersianConverter.convertToStandardPersian(orginal, configuration: configutaion)
    
    #expect(result == orginal)
}
