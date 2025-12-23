import Foundation

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

struct MainData: Codable {
    let info: PageInfo
    let results: [CharacterData]
}

struct PageInfo: Codable {
    let count: Int
    let pages: Int
//    let next: String?
//    let prev: String?
}

struct CharacterData: Codable {
    let id: String
    let name: String
    let status: String
    let gender: String
    let image: String
}

// MARK: - IT'S TO TEST THE FUNCTION

struct TestStruct: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
