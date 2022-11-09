import NeedleFoundation
import Core

protocol ChatListDependency: Dependency {
    var logger: ILogger { get }
    var chatService: IChatService { get }
}

protocol IChatListComponent {
    var logger: ILogger { get }
    var chatService: IChatService { get }
}

class ChatListComponent: Component<ChatListDependency>, IChatListComponent {
    var logger: ILogger { dependency.logger }
    var chatService: IChatService { dependency.chatService }
}
