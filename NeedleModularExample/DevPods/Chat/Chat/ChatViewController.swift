import Foundation

class ChatViewController: UIViewController {
    private let presenter: IChatPresenter
    
    init(presenter: IChatPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
