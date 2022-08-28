import UIKit

class ExercisesListViewController: UIViewController {
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        setupConstraints()
        setupNavBar()
    }

}

extension ExercisesListViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ExerciseCardCollectionViewCell.identifier, for: indexPath) as! ExerciseCardCollectionViewCell
        return cell
    }
}

private extension ExercisesListViewController {
    func setupNavBar() {
        self.navigationController?.navigationBar.topItem?.title = "List of Exercises"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

    func setUpCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 40, left: 20, bottom: 20, right: 20)
        layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 30
        layout.itemSize = CGSize(width: ( view.frame.width),
                                 height: (view.frame.height/3)
        )
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(ExerciseCardCollectionViewCell.self, forCellWithReuseIdentifier: ExerciseCardCollectionViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white.withAlphaComponent(0.8)
        view.addSubview(collectionView)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
