import UIKit

final class ViewController: UIViewController {
    
    let networkManager = NetworkManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonFetchDataTapped(_ sender: Any) {
        networkManager.fetchData(from: JsonData.testEasy.url) { result in
            switch result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}

