enum Character: CaseIterable {
    case one
    case two
    case three
    
    var title: String {
        switch self {
        case .one: return "One"
        case .two: return "Two"
        case .three: return "Three"
        }
    }
}


