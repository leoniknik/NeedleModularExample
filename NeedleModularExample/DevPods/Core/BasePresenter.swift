import Foundation

open class BasePresenter {
    private let scope: Any
    
    public init(scope: Any) {
        self.scope = scope
    }
}
