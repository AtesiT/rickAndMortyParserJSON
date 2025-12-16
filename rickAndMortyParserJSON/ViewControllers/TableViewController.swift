import UIKit

final class TableViewController: UITableViewController {
    
    let chracterList = Character.allCases

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(chracterList.count)
        return chracterList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = chracterList[indexPath.row].title
        
        cell.contentConfiguration = content
        return cell
    }
}
