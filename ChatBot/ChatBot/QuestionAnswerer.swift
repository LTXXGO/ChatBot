struct QuestionAnswerer {
    
    func responseTo(question: String) -> String {
        var lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("你") {
            lowerQuestion = String(lowerQuestion.suffix(lowerQuestion.count - 1))
            lowerQuestion = "我\(lowerQuestion)"
        } else if lowerQuestion.hasPrefix("我") {
            lowerQuestion = String(lowerQuestion.suffix(lowerQuestion.count - 1))
            lowerQuestion = "你\(lowerQuestion)"
        }
        
        if lowerQuestion.hasSuffix("吗?") || lowerQuestion.hasSuffix("吗？"){
            lowerQuestion = String(lowerQuestion.prefix(lowerQuestion.count - 2))
            lowerQuestion = lowerQuestion + "!"
        } else if lowerQuestion.hasSuffix("?") || lowerQuestion.hasSuffix("？"){
            lowerQuestion = "不知道,下一个"
        }
        return lowerQuestion
    }
}
