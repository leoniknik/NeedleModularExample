import NeedleFoundation
import ChatInterfaces

public protocol AuthTabBarCoordinatorDependency {
    var chatCoordinatorAssembly: IChatCoordinatorAssembly { get }
}

protocol IAuthTabBarCoordinatorComponent {
    var chatCoordinatorAssembly: IChatCoordinatorAssembly { get }
}

public class AuthTabBarCoordinatorComponent: BootstrapComponent, IAuthTabBarCoordinatorComponent {
    
    private let dependencies: AuthTabBarCoordinatorDependency
    
    public init(dependencies: AuthTabBarCoordinatorDependency) {
        self.dependencies = dependencies
    }
    
    var chatCoordinatorAssembly: IChatCoordinatorAssembly { dependencies.chatCoordinatorAssembly }
}
