//
//  ViewController+CollectionViewDelegate.swift
//  DemoPractical
//
//  Created by Dhruv Patel on 12/10/23.
//

import UIKit

//UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return userCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UserCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCollectionViewCell", for: indexPath) as! UserCollectionViewCell
        return cell;
    }
    
    
     func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (userCount%2 == 0) {
            let width = (UIScreen.main.bounds.width - 30 )/2
            return CGSize(width: width, height: width)
        }
        if(indexPath.item == 0) {
            let width = (UIScreen.main.bounds.width - 20)
            return CGSize(width: width, height: width)
        }else{
            let width = (UIScreen.main.bounds.width - 30 )/2
            return CGSize(width: width, height: width)
        }
    }


    
}
