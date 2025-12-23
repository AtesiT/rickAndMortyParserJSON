import Foundation

enum JsonData {
    case character
    case full
    case testGet
    case testPost
    
    var url: URL {
        switch self {
        case .character: return URL(string: "https://rickandmortyapi.com/api/character")!
        case .full: return URL(string: "https://rickandmortyapi.com/api")!
        case .testGet: return URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
        case .testPost: return URL(string: "https://jsonplaceholder.typicode.com/posts")!
        }
    }
}


