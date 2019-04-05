//
//  DataStore.swift
//  06-collectionView
//
//  Created by Drcom Asia on 11/20/18.
//  Copyright © 2018 Hanh Nguyen. All rights reserved.
//

import Foundation
import UIKit


final class DataStore{
    static let sharedInstance = DataStore()
    fileprivate init(){}
    
    var audiobooks: [AudioBook] = []
    var images: [UIImage] = []
    
    func getBooks(completion: @escaping () -> Void) {
        APIClient.getAudiobooksAPI { (json) in
            let feed = json?["feed"] as? AudiobookJSON
            if let results = feed?["results"] as? [AudiobookJSON] {
                for dict in results {
                    let newAudiobook = AudioBook(dictionary: dict)
                    self.audiobooks.append(newAudiobook)
                }
                completion()
            }
        }
    }
    
    func getBookImages(completion: @escaping () -> Void) {
        getBooks {
            for book in self.audiobooks {
                let url = URL(string: book.coverImage)
                let data = try? Data(contentsOf: url!)
                if let imageData = data {
                    let image = UIImage(data: imageData)
                    self.images.append(image!)
                }
            }
            OperationQueue.main.addOperation {
                completion()
            }
        }
    }
}
