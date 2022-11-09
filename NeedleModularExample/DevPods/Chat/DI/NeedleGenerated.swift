

import Core
import NeedleFoundation

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class ChatListDependency39d1fc1f063e60e447a7Provider: ChatListDependency {
    var logger: ILogger {
        return chatCoordinatorComponent.logger
    }
    var chatService: IChatService {
        return chatCoordinatorComponent.chatService
    }
    private let chatCoordinatorComponent: ChatCoordinatorComponent
    init(chatCoordinatorComponent: ChatCoordinatorComponent) {
        self.chatCoordinatorComponent = chatCoordinatorComponent
    }
}
/// ^->ChatCoordinatorComponent->ChatListComponent
private func factoryabd00caea3eae6c54a751569e3ab5496b68a7133(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatListDependency39d1fc1f063e60e447a7Provider(chatCoordinatorComponent: parent1(component) as! ChatCoordinatorComponent)
}
private class ChatDependency030aeaa3d2103d378eb9Provider: ChatDependency {
    var logger: ILogger {
        return chatCoordinatorComponent.logger
    }
    var chatService: IChatService {
        return chatCoordinatorComponent.chatService
    }
    private let chatCoordinatorComponent: ChatCoordinatorComponent
    init(chatCoordinatorComponent: ChatCoordinatorComponent) {
        self.chatCoordinatorComponent = chatCoordinatorComponent
    }
}
/// ^->ChatCoordinatorComponent->ChatComponent
private func factory9523f099c5b34b02734d1569e3ab5496b68a7133(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatDependency030aeaa3d2103d378eb9Provider(chatCoordinatorComponent: parent1(component) as! ChatCoordinatorComponent)
}

#else
extension ChatListComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChatListDependency.logger] = "logger-ILogger"
        keyPathToName[\ChatListDependency.chatService] = "chatService-IChatService"
    }
}
extension ChatComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChatDependency.logger] = "logger-ILogger"
        keyPathToName[\ChatDependency.chatService] = "chatService-IChatService"
    }
}
extension ChatCoordinatorComponent: Registration {
    public func registerItems() {


    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

private func register1() {
    registerProviderFactory("^->ChatCoordinatorComponent->ChatListComponent", factoryabd00caea3eae6c54a751569e3ab5496b68a7133)
    registerProviderFactory("^->ChatCoordinatorComponent->ChatComponent", factory9523f099c5b34b02734d1569e3ab5496b68a7133)
    registerProviderFactory("^->ChatCoordinatorComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
