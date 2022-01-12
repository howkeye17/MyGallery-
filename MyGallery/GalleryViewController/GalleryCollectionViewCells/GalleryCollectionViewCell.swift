//
//  GalleryCollectionViewCell.swift
//  MyGallery
//
//  Created by Valera Vasilevich on 12.01.22.
//

import UIKit
// MARK: - GalleryCollectionView Cell Class
class GalleryCollectionViewCell: UICollectionViewCell {
// MARK: - Static Properties for Cell
    static let identifier = "GalleryCollectionCell"
// MARK: - Private properties for Cell
    private var userName: UILabel = {
        let label = UILabel()
        return label
    }()
    private var userURL: UILabel = {
        let label = UILabel()
        return label
    }()
    private var photoURL: UILabel = {
        let label = UILabel()
        return label
    }()
    private var mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
// MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
// MARK: - Method for Setup Cell
    private func setupCell() {
        addSubview(mainImage)
        NSLayoutConstraint.activate([
            mainImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainImage.topAnchor.constraint(equalTo: self.topAnchor),
            mainImage.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
