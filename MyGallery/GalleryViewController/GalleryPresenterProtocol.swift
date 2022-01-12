//
//  GalleryPresenterProtocol.swift
//  MyGallery
//
//  Created by Valera Vasilevich on 12.01.22.
//

import Foundation
// MARK: - Gallery Presenter Protocol
protocol GalleryPresenterProtocol {
    func setupGalleryVC(view: GalleryViewProtocol)
}
// MARK: - Gallery View Protocol
protocol GalleryViewProtocol: AnyObject {
}
