//
//  Message.swift
//  StanwoodChat
//
//  Created by Maciek on 25.01.2018.
//

import Foundation

public enum MessageType {
    case received
    case replied
}

enum Message {
    case received(String)
    case replied(String)
    
    var type: MessageType {
        switch self {
        case .received(_):
            return .received
        case .replied(_):
            return .replied
        }
    }
    
    var text: String {
        switch self {
        case let .received(text):
            return text
        case let .replied(text):
            return text
        }
    }
    
    func isOfTheSameType(as message: Message) -> Bool {
        switch (self, message) {
        case (.received(_), .received(_)):
            fallthrough
        case (.replied(_), .replied(_)):
            return true
        default:
            return false
        }
    }
}
