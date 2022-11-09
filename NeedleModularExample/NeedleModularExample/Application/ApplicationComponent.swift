import NeedleFoundation
import Chat
import ChatInterfaces
import AuthTabBar
import Core

class ApplicationComponent: BootstrapComponent {
    var authTabBarCoordinatorAssembly: IAuthTabBarCoordinatorAssembly {
        AuthTabBarCoordinatorAssembly {
            AuthTabBarCoordinatorComponent(dependencies: self)
        }
    }
}

extension ApplicationComponent: AuthTabBarCoordinatorDependency {
    var chatCoordinatorAssembly: IChatCoordinatorAssembly {
        ChatCoordinatorAssembly {
            ChatCoordinatorComponent(dependencies: self)
        }
    }
}

extension ApplicationComponent: ChatCoordinatorDependency {
    var logger: ILogger {
        shared { Logger() }
    }
}
