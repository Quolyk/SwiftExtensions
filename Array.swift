extension Array {
    @discardableResult
    func each(_ f: (Element) -> ()) {
        for e in self {
            f(e)
        }
    }
}
