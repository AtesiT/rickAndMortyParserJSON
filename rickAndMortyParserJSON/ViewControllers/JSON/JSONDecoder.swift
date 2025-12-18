import Foundation

enum DataErrors: Error {
    case dataError
    case networkError
    case decodingError
    
    var description: String {
        switch self {
        case .dataError: return "You have problem with data"
        case .networkError: return "You have problem with network"
        case .decodingError: return "You have problem with decoding"
        }
    }
}

func fetchData<T:Decodable>(_ type: T.Type, from url: URL, completion: @escaping(Result<T,DataErrors>) -> Void) {
    URLSession.shared.dataTask(with: JsonData.character.url) { data, response, error in
        guard let data, let response else {
            print(error?.localizedDescription ?? "Nothing")
            return
        }
        print(response)
        
        do {
            let decoder = try JSONDecoder().decode(T.self, from: data)
            print(decoder)
        } catch {
            print(error.localizedDescription)
        }
    }
}



