extension Int {
    func times(_ f: () -> ()) {
        guard self >= 0 else { return }
        for _ in 0..<self {
            f()
        }
    }
    
    func upto(_ n: Int, f: (Int) -> ()) {
        guard self <= n else { return }
        for i in self...n {
            f(i)
        }
    }
    
    func downto(_ n: Int, f: (Int) -> ()) {
        guard self >= n else { return }
        for i in (n...self).reversed() {
            f(i)
        }
    }
}
