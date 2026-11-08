//
//  Characters.swift
//  PersianTools
//
//  Created by Mohammad Ne on 11/5/26.
//

import Foundation


public enum PersianConverter {
    
    ///Converts all characters of the string into standard persian characters.
    ///
    ///You can customize the characters that you want to convert, by creating a seperate ``ConversionConfiguration`` for yourself
    public static func convertToStandardPersian(_ text : String,configuration : ConversionConfiguration = .default) -> String {
        
        var copy = text
        
        if configuration.numbersOptions == .toPersian{
            copy = copy
            //Replace English Numbers
                .replacingOccurrences(of: "0", with: "۰")
                .replacingOccurrences(of: "1", with: "۱")
                .replacingOccurrences(of: "2", with: "۲")
                .replacingOccurrences(of: "3", with: "۳")
                .replacingOccurrences(of: "4", with: "۴")
                .replacingOccurrences(of: "5", with: "۵")
                .replacingOccurrences(of: "6", with: "۶")
                .replacingOccurrences(of: "7", with: "۷")
                .replacingOccurrences(of: "8", with: "۸")
                .replacingOccurrences(of: "9", with: "۹")
            //Replace Arabic Numbers
                .replacingOccurrences(of: "٠", with: "۰")
                .replacingOccurrences(of: "١", with: "۱")
                .replacingOccurrences(of: "٢", with: "۲")
                .replacingOccurrences(of: "٣", with: "۳")
                .replacingOccurrences(of: "٤", with: "۴")
                .replacingOccurrences(of: "٥", with: "۵")
                .replacingOccurrences(of: "٦", with: "۶")
                .replacingOccurrences(of: "٧", with: "۷")
                .replacingOccurrences(of: "٨", with: "۸")
                .replacingOccurrences(of: "٩", with: "۹")
            
        }
        
        for item in configuration.convertableCharacters {
            copy = copy.replacingOccurrences(of: String(item.original), with: String(item.replaceWith))
        }
        
        return copy
    }
    
}
