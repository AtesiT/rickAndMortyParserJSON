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

struct MainData {
    let info: PageInfo
    let results: [CharacterData]
}

struct PageInfo {
    let count: Int
    let pages: Int
//    let next: String?
//    let prev: String?
}

struct CharacterData {
    let image: String
    let gender: String
    let status: String
    let id: String
    let name: String
}

