import Foundation

class ApplicationCoordinatorAssembly {
    init() {}
    
    func assemble() -> IApplicationCoordinator {
        let component = ApplicationComponent()
        return ApplicationCoordinator(
            scope: component,
            authTabBarCoordinatorAssembly: component.authTabBarCoordinatorAssembly
        )
    }
}
