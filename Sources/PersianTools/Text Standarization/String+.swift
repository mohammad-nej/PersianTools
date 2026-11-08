//
//  String+.swift
//  PersianTools
//
//  Created by Mohammad Ne on 11/8/26.
//


public extension String {
    
    ///Returns a new string by converting all non-standard persian characters to standard one.
    func toStandardPersian() -> String {
        PersianConverter.convertToStandardPersian(self)
    }
    
    ///Mutate the current string by  converting all non-standard persian characters to standard one.
    mutating func standardizeToPersian(){
        let newValue = self.toStandardPersian()
        self = newValue
    }
}


internal extension String {
    var firstCChar : CChar {
        self.first!.cChar
    }
}
