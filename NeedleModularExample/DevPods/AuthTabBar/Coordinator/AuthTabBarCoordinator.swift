import Foundation
import ChatInterfaces
import Core

public protocol IAuthTabBarCoordinator {}

class AuthTabBarCoordinator: BaseCoordinator, IAuthTabBarCoordinator {
    private let chatCoordinatorAssembly: IChatCoordinatorAssembly
    
    init(scope: Any, chatCoordinatorAssembly: IChatCoordinatorAssembly) {
        self.chatCoordinatorAssembly = chatCoordinatorAssembly
        super.init(scope: scope)
    }
    
    func setup() {
        let chatCoordinator = chatCoordinatorAssembly.assemble()
        print(chatCoordinator)
    }
}
