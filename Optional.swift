import Foundation

extension Optional {
    
    @discardableResult
    func ifSome(_ hanlder: (Wrapped) -> Void) -> Optional {
        switch self {
        case .some(let wrapped):
            hanlder(wrapped)
            return self
        case .none:
            return self
        }
    }
    
    @discardableResult
    func ifNone(_ handler: () -> Void) -> Optional {
        switch self {
        case .some:
            return self
        default:
            handler()
            return self
        }
    }
    
}
