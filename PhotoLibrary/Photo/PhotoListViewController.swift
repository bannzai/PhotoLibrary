//
//  PhotoListViewController.swift
//  PhotoLibrary
//
//  Created by Yudai.Hirose on 2020/04/16.
//  Copyright © 2020 bannzai. All rights reserved.
//

import UIKit


private func layout() -> UICollectionViewLayout {
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                          heightDimension: .fractionalHeight(1.0))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(UIScreen.main.bounds.width),
                                           heightDimension: .absolute(44))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                   subitems: [item])
    
    let section = NSCollectionLayoutSection(group: group)
    
    let layout = UICollectionViewCompositionalLayout(section: section)
    return layout
}
final class PhotoListViewController: UIViewController {
    typealias Cell = PhotoListCollectionViewCell
    enum Section: CaseIterable {
        case main
    }
    let collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        configureDataSource()
        collectionView.reloadData()
    }
}

private extension PhotoListViewController {
    func setup() {
        collectionView.backgroundColor = .systemBackground
        collectionView.registerCell(type: Cell.self)
        view.addSubview(collectionView)
        collectionView.enableAutoLayout()
        collectionView.expandToSuperview()
    }
    func configureDataSource() {
        let dataSource = UICollectionViewDiffableDataSource<Section, Int>(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, identifier: Int) -> UICollectionViewCell? in
            let cell = collectionView.dequeueReusableCell(type: Cell.self, indexPath: indexPath)
            return cell
        }
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Int>()
        snapshot.appendSections([.main])
        snapshot.appendItems(Array(0..<10))
        dataSource.apply(snapshot)
    }
}
