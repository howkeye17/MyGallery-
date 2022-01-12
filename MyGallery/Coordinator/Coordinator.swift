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
        let vc = GalleryViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}
