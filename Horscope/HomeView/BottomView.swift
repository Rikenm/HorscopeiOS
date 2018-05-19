//
//  BottomView.swift
//  Horscope
//
//  Created by Riken Maharjan on 5/16/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import UIKit


class BottomView: UICollectionView, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame:frame,collectionViewLayout:layout)
        
        //self.frame.size = CGSize(width: (UIScreen.main.bounds.maxX-UIScreen.main.bounds.minX), height: (UIScreen.main.bounds.maxY-UIScreen.main.bounds.minY))///2)
        backgroundColor = .red
        register(CollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        
        let layout = collectionViewLayout as? UICollectionViewFlowLayout
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
        return 3
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CollectionViewCell
        
        cell.titleLabel.text = "Libra"
        
       
        
        
        
        
        //stack.bottomAnchor.constraint(equalTo: cell.bottomAnchor,constant: -10).isActive = true
        
        cell.backgroundColor = .purple
        
        

        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize(width: frame.width, height: frame.height)
        return frame.size
    }
    
    
    
    
    
    
    

    
    
    
    
}
