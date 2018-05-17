//
//  BottomView.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class BottomView: UICollectionView, UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame:frame,collectionViewLayout:layout)
        
        self.frame.size = CGSize(width: 500, height: 300)
        self.backgroundColor = .red
        self.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        let layout = self.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        layout?.minimumLineSpacing = 0
        
        self.isPagingEnabled = true
        
        delegate = self
        dataSource = self
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CollectionViewCell
        
        //cell.titleLabel = "Libra"

        return cell
    }
    
    
    

    
    
    
    
}
