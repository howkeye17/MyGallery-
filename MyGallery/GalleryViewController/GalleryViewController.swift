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
// MARK: - Initialization
    init(galleryPresenter: GalleryPresenterProtocol) {
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
    }
}
// MARK: - Extension for Gallery View Protocol
extension GalleryViewController: GalleryViewProtocol {
}
