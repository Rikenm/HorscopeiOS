//
//  BottomView.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class BottomView: UICollectionView, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var data:HoroscopeCore?
    
    let pageControl : UIPageControl = {
        
       let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        
        return pageControl
        
    }()
    
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame:frame,collectionViewLayout:layout)
        
        //self.frame = CGRect(x: 0, y: 0, width: screenWidth, height: UIScreen.main.bounds.height/2)
        backgroundColor = UIColor(red:77/255, green:86/255, blue:103/255, alpha:1.0)
        register(CollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
        let layout = collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        layout?.minimumLineSpacing = 0
        
        
        
        
        self.isPagingEnabled = true
        
        delegate = self
        dataSource = self
        
        
        pageControl.hidesForSinglePage = true
        
        
        //change later
        
        pageControl.numberOfPages = 3
        
        pageControl.tintColor = .red
        pageControl.pageIndicatorTintColor = .black
        pageControl.currentPageIndicatorTintColor =  .green
        
         bringSubview(toFront: pageControl)
        

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CollectionViewCell
        
        // 0
        cell.titleLabel.text = "Love"
        cell.bodyText.text = data?.love
        
        
        // 1
        
        
        // 2
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize(width: frame.width, height: frame.height)
        
        return CGSize(width: frame.size.width, height: frame.size.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pageControl.currentPage = indexPath.row
        print(indexPath.row)
    }
    
    

    
    
    
    

    
    
    
    
}
