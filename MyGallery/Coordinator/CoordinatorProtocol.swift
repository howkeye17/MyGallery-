//
//  CoordinatorProtocol.swift
//  MyGallery
//
//  Created by Valera Vasilevich on 12.01.22.
//

import UIKit
// MARK: - Coordinator Protocol
protocol CoordinatorProtocol: AnyObject {
    var window: UIWindow? { get set }

    func start()
}
// MARK: - Gallery Coordinator Protocol
protocol GalleryCoordinatorProtocol: AnyObject {
    func startGalleryScene()
}
