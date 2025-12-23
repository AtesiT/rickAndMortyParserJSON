import Foundation
import Alamofire

final class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    private func fetchJSONdata(from url: URL, completion: @escaping(Result<JsonData, AFError>)-> Void) {
        AF.request(url)
            .validate()
            .responseJSON { dataResponse in
                switch dataResponse.result {
                case .success(let value):
                    print("")
                    //  DONT FORGET TO MAKE THE FUNC LATER
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    //MARK: - TEST THE FUNC
    func fetchData(from url: URL, completion: @escaping(Result<JsonData, AFError>) -> Void) {
        AF.request(url)
            .validate()
            .responseJSON { dataResponse in
                switch dataResponse.result {
                case .success(let value):
                    guard let dataDetails = value as? [String: Any] else {return}
                    print(dataDetails)
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    func postData(to url: URL, data: TestStruct, completion: @escaping(Result<TestStruct, AFError>) -> Void) {
        AF.request(url, method: .post, parameters: data, encoder: JSONParameterEncoder(encoder: JSONEncoder()))
            .validate()
            .responseDecodable(of: TestStruct.self) { dataResponse in
                switch dataResponse.result {
                case .success(let value):
                    completion(.success(value))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}

