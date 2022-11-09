import Foundation
import Core
import AuthTabBar

protocol IApplicationCoordinator {}

class ApplicationCoordinator: BaseCoordinator, IApplicationCoordinator {
    private let authTabBarCoordinatorAssembly: IAuthTabBarCoordinatorAssembly
    
    init(scope: Any, authTabBarCoordinatorAssembly: IAuthTabBarCoordinatorAssembly) {
        self.authTabBarCoordinatorAssembly = authTabBarCoordinatorAssembly
        super.init(scope: scope)
    }
}
