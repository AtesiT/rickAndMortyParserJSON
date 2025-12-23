import Foundation

enum JsonData {
    case character
    case full
    case testEasy
    
    var url: URL {
        switch self {
        case .character: return URL(string: "https://rickandmortyapi.com/api/character")!
        case .full: return URL(string: "https://rickandmortyapi.com/api")!
        case .testEasy: return URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
        }
    }
}


