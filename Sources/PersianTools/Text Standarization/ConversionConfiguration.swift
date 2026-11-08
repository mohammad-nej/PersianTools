//
//  ConversionConfiguration.swift
//  PersianTools
//
//  Created by Mohammad Ne on 11/8/26.
//


import Foundation


///Can be used to customize the behavior of ``PersianConverter``
///
/// - Note: You can choose to ignore english numbers in persian text by setting ``numbersOption`` to ``.keep``
public struct ConversionConfiguration : Sendable  {
    
    public init(numbersOptions: NumbersConversionOptions, convertableCharacters: [ReplaceableCharacter]) {
        self.numbersOptions = numbersOptions
        self.convertableCharacters = convertableCharacters
    }
    
    public static let `default` : ConversionConfiguration = .init(numbersOptions: .toPersian,convertableCharacters: .default )
    
    ///Converts english numbers to persian numbers
    public var numbersOptions : NumbersConversionOptions
    
    public var convertableCharacters : [ReplaceableCharacter]
    
}
