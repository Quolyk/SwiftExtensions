import UIKit

extension UITableView {
    
    func dequeueCell<T: UITableViewCell>(withIdentifier identifier: String, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
    }
    
    func dequeueCell<T: UITableViewCell>(for reuseIdentifier: String) -> T {
        return dequeueReusableCell(withIdentifier: reuseIdentifier) as! T
    }
    
}
