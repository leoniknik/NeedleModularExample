import Foundation
import Core

protocol IChatPresenter {}

class ChatPresenter: BasePresenter, IChatPresenter {
    private let logger: ILogger
    private let chatService: IChatService
    
    init(scope: Any, logger: ILogger, chatService: IChatService) {
        self.chatService = chatService
        self.logger = logger
        super.init(scope: scope)
    }
}
