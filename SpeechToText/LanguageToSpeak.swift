//
//  LanguageToSpeak.swift
//  Terabithia
//
//  Created by Claudio Cavalli on 21/02/18.
//  Copyright © 2018 Claudio Cavalli. All rights reserved.
//

import UIKit

class Language{
    
    public static let instance = Language()
    var langCode = NSLocale.preferredLanguages[0]
    var regionCode = Locale.current.regionCode!
  
    
    func getlangCode()->String{
        return self.langCode
    }
    
    func getregionCode()->String{
        return self.regionCode
    }
    
    func setlanguage() -> String{
    
        return  self.langCode
    }
    
    func selectedlanguage(language: String){
        langCode =  language
    }
    
}
