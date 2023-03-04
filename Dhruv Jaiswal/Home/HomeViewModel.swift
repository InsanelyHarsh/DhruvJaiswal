//
//  HomeViewModel.swift
//  Dhruv Jaiswal
//
//  Created by Harsh Yadav on 04/03/23.
//

import Foundation
import SwiftUI

struct CategoryItem:Identifiable{
    let id = UUID().uuidString
    let categoryImage:Image
    let categoryTitle:String
}

struct NearbyProduct:Identifiable{
    let id = UUID().uuidString
    
    let itemImage:Image
    let itemName:String
    
    let sellerName:String
    let sellerAddress:String
    
    var isVerified:Bool = false
    var wholeSale:Bool = false
    
    let itemPrice:Int
}

class HomeViewModel:ObservableObject{
    private(set) var categoryItem:[[CategoryItem]] = []
    private(set) var nearByProductList:[[NearbyProduct]] = []
    
    init(){
        self.getCategoryItems()
        self.getNearbyProducts()
    }
    
    
    private func getCategoryItems(){
        categoryItem = [
            [
                .init(categoryImage: CategoryImage.clothing.image, categoryTitle: CategoryImage.clothing.categoryTitle),
                .init(categoryImage: CategoryImage.phones.image, categoryTitle: CategoryImage.phones.categoryTitle),
                .init(categoryImage: CategoryImage.electronic.image, categoryTitle: CategoryImage.electronic.categoryTitle),
                .init(categoryImage: CategoryImage.computers.image, categoryTitle: CategoryImage.computers.categoryTitle)
            ],
            
            [
                .init(categoryImage: CategoryImage.beauty.image, categoryTitle: CategoryImage.beauty.categoryTitle),
                .init(categoryImage: CategoryImage.homeAppliance.image, categoryTitle: CategoryImage.homeAppliance.categoryTitle),
                .init(categoryImage: CategoryImage.bags.image, categoryTitle: CategoryImage.bags.categoryTitle),
                .init(categoryImage: CategoryImage.hairs.image, categoryTitle: CategoryImage.hairs.categoryTitle)
            ]
        ]
    }
    
    
    private func getNearbyProducts(){
        
        self.nearByProductList = [
            [
                .init(itemImage: ImageUtility.darkKaftanYellow.image, itemName: "Dark Kaftan Yellow", sellerName: "NASIBA HAFIZ,", sellerAddress: "Chandigarhq", isVerified: true, wholeSale: true, itemPrice: 47_314),
                .init(itemImage: ImageUtility.darkKaftanYellow.image, itemName: "Dark Kaftan Yellow", sellerName: "NASIBA HAFIZ,", sellerAddress: "Chandigarhq", itemPrice: 47_314),
            ],
            [
                .init(itemImage: ImageUtility.darkKaftanYellow.image, itemName: "Dark Kaftan Yellow", sellerName: "NASIBA HAFIZ,", sellerAddress: "Chandigarhq", wholeSale: true, itemPrice: 47_314),
                .init(itemImage: ImageUtility.darkKaftanYellow.image, itemName: "Dark Kaftan Yellow", sellerName: "NASIBA HAFIZ,", sellerAddress: "Chandigarhq", isVerified: true,itemPrice: 47_314),
            ]
        ]
    }
    
}

extension Array{
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}


enum CategoryImage{
    case clothing
    case phones
    case electronic
    case computers

    case beauty
    case homeAppliance
    case bags
    case hairs
    
    var image:Image{
        switch self {
        case .clothing:
            return Image("clothing")
        case .phones:
            return Image("phones")
        case .electronic:
            return Image("electronic")
        case .computers:
            return Image("computers")
        case .beauty:
            return Image("beauty")
        case .homeAppliance:
            return Image("homeAppliance")
        case .bags:
            return Image("bags")
        case .hairs:
            return Image("hairs")
        }
    }
    
    var categoryTitle:String{
        switch self {
        case .clothing:
            return "Clothings"
        case .phones:
            return "Phones"
        case .electronic:
            return "Electronic"
        case .computers:
            return "Computer"
        case .beauty:
            return "Beauty"
        case .homeAppliance:
            return "Home & Appliance"
        case .bags:
            return "Bags & Luggage"
        case .hairs:
            return "Hairs"
        }
    }
}
