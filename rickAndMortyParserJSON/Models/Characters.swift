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

struct TestStruct: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    init(everyData: [String: Any]) {
        userId = everyData["userId"] as? Int ?? 0
        id = everyData["id"] as? Int ?? 0
        title = everyData["title"] as? String ?? ""
        body = everyData["body"] as? String ?? ""
    }
}

// MARK: - Initialization Struct

let anyDictionary: [String: Any] = [
    "userId": 10,
    "id": 10,
    "title": "Greeting",
    "body": "Hey, how are you?"
]

let testStruct = TestStruct(everyData: anyDictionary)
