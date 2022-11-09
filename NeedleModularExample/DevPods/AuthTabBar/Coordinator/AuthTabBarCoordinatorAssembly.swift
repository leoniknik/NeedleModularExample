import Foundation
import ChatInterfaces

public protocol IAuthTabBarCoordinatorAssembly {
    func assemble() -> IAuthTabBarCoordinator
}

public class AuthTabBarCoordinatorAssembly: IAuthTabBarCoordinatorAssembly {
    
    private let componentProvider: () -> (IAuthTabBarCoordinatorComponent)
    
    public init(componentProvider: @escaping () -> (AuthTabBarCoordinatorComponent)) {
        self.componentProvider = componentProvider
    }
    
    init(componentProvider: @escaping () -> (IAuthTabBarCoordinatorComponent)) {
        self.componentProvider = componentProvider
    }
    
    public func assemble() -> IAuthTabBarCoordinator {
        let component = componentProvider()
        let coordinator = AuthTabBarCoordinator(
            scope: component,
            chatCoordinatorAssembly: component.chatCoordinatorAssembly
        )
        return coordinator
    }
}
