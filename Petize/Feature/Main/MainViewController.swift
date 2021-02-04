//
//  MainViewController.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import UIKit
import RxSwift
import RxCocoa
import Alamofire

final class MainViewController: UIViewController {
    lazy var root = MainView()
    lazy var presenter: MainPresenterDelegate = MainPresenter(view: self)
    
    var totalItems = Int.random(in: 1...20)
    
    var disposable = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Petize"
        view = root
        
        root.collection.dataSource = self
        root.collection.delegate = self
        if let layout = root.collection.collectionViewLayout as? DynamicCollectionLayout {
          layout.delegate = self
        }
        root.refreshControl.rx.controlEvent(.valueChanged).subscribe { _ in
            self.totalItems = Int.random(in: 1...20)
            self.root.collection.performBatchUpdates {
                self.root.collection.reloadSections(IndexSet(integer: 0))
            } completion: { _ in
                self.root.refreshControl.endRefreshing()
                self.root.refreshControl.tintColor = .random()
            }
        }.disposed(by: disposable)

        
        // Do any additional setup after loading the view.
    }
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totalItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PetCollectionCell else { return UICollectionViewCell() }
        cell.contentView.backgroundColor = .random()
//        cell.model = data[indexPath.item]
        return cell
    }
}

extension MainViewController: DynamicCollectionLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return CGFloat.random(in: 50...200)
    }
}

extension MainViewController: MainViewControllerDelegate {
    
}
