import Foundation

class ChatListViewController: UIViewController {
    private let presenter: IChatListPresenter
    
    init(presenter: IChatListPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
