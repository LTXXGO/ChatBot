import Foundation

enum MessageType {
    case question
    case answer
}

struct Message {
    let date: Date
    let text: String
    let type: MessageType
}

let openingLine = Message(date: Date(), text: "Hello, I'm ChatBot.\nPlease ask me a question", type: .answer)
