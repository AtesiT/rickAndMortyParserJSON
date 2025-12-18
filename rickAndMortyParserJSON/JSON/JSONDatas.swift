import Foundation

enum JsonData {
    case character
    case full
    
    var url: URL {
        switch self {
        case .character: return URL(string: "https://rickandmortyapi.com/api/character")!
        case .full: return URL(string: "https://rickandmortyapi.com/api")!
        }
    }
}


