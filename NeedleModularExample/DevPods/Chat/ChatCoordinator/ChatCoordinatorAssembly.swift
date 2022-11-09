import Foundation
import ChatInterfaces

public class ChatCoordinatorAssembly: IChatCoordinatorAssembly {
    
    private let componentProvider: () -> (IChatCoordinatorComponent)
    
    public init(componentProvider: @escaping () -> (ChatCoordinatorComponent)) {
        self.componentProvider = componentProvider
    }
    
    init(componentProvider: @escaping () -> (IChatCoordinatorComponent)) {
        self.componentProvider = componentProvider
    }
    
    public func assemble() -> IChatCoordinator {
        let component = componentProvider()
        let coordinator = ChatCoordinator(
            scope: component,
            chatListAssembly: ChatListAssembly {
                component.chatListComponent
            },
            chatAssembly: ChatAssembly {
                component.chatComponent
            }
        )
        return coordinator
    }
}
