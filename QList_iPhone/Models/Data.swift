//
//  Data.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/8/26.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import Foundation
import SwiftUI

let landmarkData: [Landmark] = load("landmarkData.json")

func load<T: Decodable> (_ name: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: name, withExtension: nil) else {
        fatalError("Could not find \(name) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(name) from main bundle. \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(name) as \(T.self):\n\(error)")
    }
}

final class ImageStore {
    static var shared = ImageStore()
    typealias _ImageDictionary = [String: CGImage]
    fileprivate var images: _ImageDictionary = [:]
    fileprivate static var scale: Int = 2
    fileprivate func _imageIndex(name: String) -> _ImageDictionary.Index {
        if let index = images.index(forKey: name) {
            return index
        }
        
        images[name] = ImageStore.loadImage(name: name)
        
        return images.index(forKey: name)!
    }
    
    func image(name: String) -> Image {
        let index = _imageIndex(name: name)
        return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(name))
    }
    
    static func loadImage(name: String) -> CGImage {
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
        else {
            fatalError("Could not load image \(name).jpg from main bundle")
        }
        
        return image
    }
}
