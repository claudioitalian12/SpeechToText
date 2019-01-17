//
//  Authorization.swift
//  SpeechToText
//
//  Created by claudio Cavalli on 17/01/2019.
//  Copyright © 2019 claudio Cavalli. All rights reserved.
//

import UIKit
import Speech

extension SpeechController{
    
  func requestAuthorization(){
    SFSpeechRecognizer.requestAuthorization { authStatus in
        
        OperationQueue.main.addOperation {
            switch authStatus {
            case .authorized:
                self.recordButton.isEnabled = true
                
            case .denied:
                self.recordButton.isEnabled = false
                self.recordButton.setTitle("User denied access to speech recognition", for: .disabled)
                
            case .restricted:
                self.recordButton.isEnabled = false
                self.recordButton.setTitle("Speech recognition restricted on this device", for: .disabled)
                
            case .notDetermined:
                self.recordButton.isEnabled = false
                self.recordButton.setTitle("Speech recognition not yet authorized", for: .disabled)
            }
        }
    }
  }
    
}
