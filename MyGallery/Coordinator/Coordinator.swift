//
//  Coordinator.swift
//  MyGallery
//
//  Created by Valera Vasilevich on 12.01.22.
//

import UIKit
// MARK: - Coordinator class
class Coordinator: CoordinatorProtocol {
// MARK: - Properties for Coordinator
    weak var window: UIWindow?
// MARK: - Initialization
    init(window: UIWindow?) {
        self.window = window
    }
// MARK: - Start method for checking user state
    func start() {
        startGalleryScene()
    }
}
// MARK: - Gallery Coordinator Protocol
extension Coordinator: GalleryCoordinatorProtocol {
    func startGalleryScene() {
        let galleryPresenter = GalleryPresenter()
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: flowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        let galleryVC = GalleryViewController(collectionView: collectionView, galleryPresenter: galleryPresenter)
        window?.rootViewController = galleryVC
        window?.makeKeyAndVisible()
    }
}
