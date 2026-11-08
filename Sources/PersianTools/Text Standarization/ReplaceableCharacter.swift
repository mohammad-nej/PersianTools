//
//  ReplaceableCharacter.swift
//  PersianTools
//
//  Created by Mohammad Ne on 11/8/26.
//


import Foundation


internal extension Character {
    var cChar : CChar {
        return CChar(self.unicodeScalars.first!.value)
    }
}

///A character that must be replaced in a persian text
public struct ReplaceableCharacter : Sendable  {
    public let original : Character
    public let replaceWith : Character
    
    public init(original: Character, replaceWith: Character) {
        self.original = original
        self.replaceWith = replaceWith
    }
    
    ///Replace "ي" with "ی"
    public static let ye : ReplaceableCharacter = .init(original: "ي", replaceWith: "ی")
    
    ///Replace "ك" with "ک"
    public static let ke : ReplaceableCharacter = .init(original: "ك", replaceWith: "ک")
    
    ///Replace "," with "،"
    public static let comma : ReplaceableCharacter = .init(original: ",", replaceWith: "،")
}


public extension Array where Element == ReplaceableCharacter {
    /// is equivilent to  `[ .ye, .ke, .comma]`
    static var `default` : [ReplaceableCharacter] {
        [.ye, .ke, .comma]
    }
}
