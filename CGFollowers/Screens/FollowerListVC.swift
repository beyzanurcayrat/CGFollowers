//
//  FollowerListVC.swift
//  CGFollowers
//
//  Created by beyzanur cayrat on 5.02.2024.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        getFollowers()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func configureViewController () {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func getFollowers() {
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .success(let followers):
                print(followers)
                
            case .failure(let error):
                self.presentCFAlertOnMainThread(title: "Bad Stuff Happend", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
        
    }
    
    func createThreeColumnFlowlayout() -> UICollectionViewFlowLayout {
        let width                       = view.bounds.width
        let padding: CGFloat            = 12
        let minimumItemSpacing: CGFloat = 10
        let avaliableWidth              = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth                   = avaliableWidth / 3
        
        let flowLayout           = UICollectionViewFlowLayout()
        flowLayout.sectionInset  = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize      = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return UICollectionViewFlowLayout()
        
    }
}
