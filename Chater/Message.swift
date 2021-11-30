//
//  Message.swift
//  Chater
//
//  Created by Ryan Lim on 2021-11-16.
//

import Foundation

class Message{
    var sender: String
    var messageBody: String
    
    init(sender: String, messageBody: String){
        self.sender = sender
        self.messageBody = messageBody
    }
}
