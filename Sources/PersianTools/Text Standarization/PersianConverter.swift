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
                .replacing("0", with: "۰")
                .replacing( "1", with: "۱")
                .replacing("2", with: "۲")
                .replacing( "3", with: "۳")
                .replacing("4", with: "۴")
                .replacing("5", with: "۵")
                .replacing("6", with: "۶")
                .replacing( "7", with: "۷")
                .replacing( "8", with: "۸")
                .replacing( "9", with: "۹")
            //Replace Arabic Numbers
                .replacing("٠", with: "۰")
                .replacing( "١", with: "۱")
                .replacing("٢", with: "۲")
                .replacing( "٣", with: "۳")
                .replacing("٤", with: "۴")
                .replacing( "٥", with: "۵")
                .replacing( "٦", with: "۶")
                .replacing( "٧", with: "۷")
                .replacing( "٨", with: "۸")
                .replacing("٩", with: "۹")
        }
        
        for item in configuration.convertableCharacters {
            copy = copy.replacing( String(item.original), with: String(item.replaceWith))
        }
        
        return copy
    }
    
}
