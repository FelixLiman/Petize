//
//  DynamicCollectionLayout.swift
//  Petize
//
//  Created by Felix Liman on 02/02/21.
//

import Foundation
import UIKit

protocol DynamicCollectionLayoutDelegate: AnyObject {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat
}

class DynamicCollectionLayout: UICollectionViewFlowLayout {
    
    weak var delegate: DynamicCollectionLayoutDelegate?
    
    var numberOfColumns: Int = 0
    var cellPadding: CGFloat = 0
//    var cellInterItemSpacing: CGFloat = 0
//    var cellLineSpacing: CGFloat = 0
    private var cache: [UICollectionViewLayoutAttributes] = []

    private var contentHeight: CGFloat = 0
    private var contentWidth: CGFloat {
        guard let collectionView = collectionView else {
            return 0
        }
        let insets = collectionView.contentInset
        return collectionView.bounds.width - (insets.left + insets.right)// - (CGFloat((numberOfColumns - 1)) * cellInterItemSpacing)
    }

    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    override func prepare() {
        guard
            cache.isEmpty == true,
            let collectionView = collectionView
        else {
            return
        }
        
        let columnWidth = contentWidth / CGFloat(numberOfColumns )
        var xOffset = [CGFloat]()
        for column in 0..<numberOfColumns {
            xOffset.append(CGFloat(column) * (columnWidth))// + cellInterItemSpacing))
        }
        
        var column = Int()
        var yOffset: [CGFloat] = .init(repeating: 0, count: numberOfColumns)

        for item in 0..<collectionView.numberOfItems(inSection: 0) {
            let indexPath = IndexPath(item: item, section: 0)
            
            let photoHeight = //CGFloat.random(in: 280...360)
              delegate?.collectionView(
              collectionView,
              heightForPhotoAtIndexPath: indexPath) ?? 0
            let height = cellPadding * 2 + photoHeight
            let frame = CGRect(x: xOffset[column],
                           y: yOffset[column],
                           width: columnWidth,
                           height: height)
            let insetFrame = frame.insetBy(dx: cellPadding, dy: cellPadding)
              
            // 5
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            attributes.frame = insetFrame
            cache.append(attributes)
              
            // 6
            contentHeight = max(contentHeight, frame.maxY)
            yOffset[column] = yOffset[column] + height
              
            column = column < (numberOfColumns - 1) ? (column + 1) : 0
        }
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
      var visibleLayoutAttributes: [UICollectionViewLayoutAttributes] = []
      
      // Loop through the cache and look for items in the rect
      for attributes in cache {
        if attributes.frame.intersects(rect) {
          visibleLayoutAttributes.append(attributes)
        }
      }
      return visibleLayoutAttributes
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
      guard indexPath.item < cache.count else { return nil }
      return cache[indexPath.item]
    }
}
//class DynamicCollectionLayout: UICollectionViewLayout {
//
//    override var collectionViewContentSize: CGSize {
//
//    }
//
//    override func prepare() {
//        <#code#>
//    }
//
//    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
//        <#code#>
//    }
//
//    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
//        <#code#>
//    }
//}
