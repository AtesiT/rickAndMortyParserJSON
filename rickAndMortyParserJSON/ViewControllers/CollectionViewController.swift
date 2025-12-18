import UIKit

private let reuseIdentifier = "collectionCell"


final class CollectionViewController: UICollectionViewController {
    
    private let arrayCharacters =  Character.allCases

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCharacters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let cell = cell as? CollectionViewCell else {return UICollectionViewCell()}
        
        cell.backgroundColor = .lightGray
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let userAction = arrayCharacters[indexPath.item]
        
        switch userAction {
        case .one:
            print(arrayCharacters[indexPath.item])
        case .two:
            print(arrayCharacters[indexPath.item])
        case .three:
            print(arrayCharacters[indexPath.item])
        }
    }
    
    
}
