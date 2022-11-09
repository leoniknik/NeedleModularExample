import Foundation
import Core
import ChatInterfaces

class ChatCoordinator: BaseCoordinator, IChatCoordinator {
    private let chatListAssembly: IChatListAssembly
    private let chatAssembly: IChatAssembly
    
    init(scope: Any, chatListAssembly: IChatListAssembly, chatAssembly: IChatAssembly) {
        self.chatListAssembly = chatListAssembly
        self.chatAssembly = chatAssembly
        super.init(scope: scope)
    }
}
