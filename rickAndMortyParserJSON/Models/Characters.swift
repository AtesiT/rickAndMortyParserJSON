enum Character: CaseIterable {
    case one, two, three
    
    var title: String {
        switch self {
        case .one: return "One"
        case .two: return "Two"
        case .three: return "Three"
        }
    }
}


