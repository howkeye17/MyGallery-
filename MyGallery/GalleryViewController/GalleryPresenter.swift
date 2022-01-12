//
//  GalleryPresenter.swift
//  MyGallery
//
//  Created by Valera Vasilevich on 12.01.22.
//

import Foundation
// MARK: - Gallery Presenter Class
class GalleryPresenter {
// MARK: - Private properties for GalleryPresenter
    private weak var view: GalleryViewProtocol?
}
// MARK: - Extension for GalleryPresenterProtocol
extension GalleryPresenter: GalleryPresenterProtocol {
    func setupGalleryVC(view: GalleryViewProtocol) {
        self.view = view
        // Response from network should be passed here
    }
}
