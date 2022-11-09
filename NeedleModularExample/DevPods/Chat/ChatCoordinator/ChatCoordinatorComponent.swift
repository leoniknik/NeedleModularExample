import NeedleFoundation
import Core

public protocol ChatCoordinatorDependency {
    var logger: ILogger { get }
}

protocol IChatCoordinatorComponent {
    var chatComponent: IChatComponent { get }
    var chatListComponent: IChatListComponent { get }
}

public class ChatCoordinatorComponent: BootstrapComponent, IChatCoordinatorComponent {
    
    private let dependencies: ChatCoordinatorDependency
    
    public init(dependencies: ChatCoordinatorDependency) {
        self.dependencies = dependencies
    }
    
    var chatComponent: IChatComponent {
        ChatComponent(parent: self)
    }
    
    var chatListComponent: IChatListComponent {
        ChatListComponent(parent: self)
    }
    
    lazy var chatService: IChatService = {
        ChatService()
    }()
    
    var logger: ILogger {
        dependencies.logger
    }
}
