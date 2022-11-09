import Foundation
import Core

protocol IChatListPresenter {}

class ChatListPresenter: BasePresenter, IChatListPresenter {
    private let logger: ILogger
    private let chatService: IChatService
    
    init(scope: Any, logger: ILogger, chatService: IChatService) {
        self.chatService = chatService
        self.logger = logger
        super.init(scope: scope)
    }
}
