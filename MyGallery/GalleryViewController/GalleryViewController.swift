//
//  GalleryViewController.swift
//  MyGallery
//
//  Created by Valera Vasilevich on 12.01.22.
//

import UIKit

// MARK: - Gallery ViewController Class
class GalleryViewController: UIViewController {
// MARK: - Private properties for GalleryVC
    private var galleryPresenter: GalleryPresenterProtocol?
// MARK: - Private Outlets for GalleryVC
    private var collectionView: UICollectionView?
// MARK: - Initialization
    init(collectionView: UICollectionView, galleryPresenter: GalleryPresenterProtocol) {
        self.collectionView = collectionView
        self.galleryPresenter = galleryPresenter
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
// MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        galleryPresenter?.setupGalleryVC(view: self)
        setupCollectionView()
        setupView()
    }
}
// MARK: - Extension for Gallery View Protocol
extension GalleryViewController: GalleryViewProtocol {
}
// MARK: - Extension for GalleryVC for UICollectionViewDataSource
extension GalleryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: GalleryCollectionViewCell.identifier,
            for: indexPath
        )
                as? GalleryCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
}
// MARK: - Extension for GalleryVC for UICollectionViewDelegate
extension GalleryViewController: UICollectionViewDelegate {
}
// MARK: - Extension for GalleryVC for UICollectionViewDelegateFlowLayout
extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
// MARK: - Private Extension for GalleryVC Methods
private extension GalleryViewController {
    func setupView() {
        guard let collection = collectionView else { return }
        view.addSubview(collection)
        NSLayoutConstraint.activate([
            collection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collection.topAnchor.constraint(equalTo: view.topAnchor),
            collection.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    func setupCollectionView() {
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.identifier)
        collectionView?.backgroundColor = .white
        collectionView?.showsHorizontalScrollIndicator = false
        collectionView?.isPagingEnabled = true
    }
}
