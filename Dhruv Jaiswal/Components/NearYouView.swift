//
//  NearYouView.swift
//  Dhruv Jaiswal
//
//  Created by Harsh Yadav on 03/03/23.
//

import SwiftUI

struct NearYouView: View {
    let item:NearbyProduct
    init(item: NearbyProduct) {
        self.item = item
    }
    
    var body: some View {
        VStack(alignment:.leading){
            item.itemImage
                .overlay(alignment: .topLeading) {
                    HStack(spacing: 2){
                        ImageUtility.tick.image
                        
                        Text("Vendor Verfied")
                            .font(.footnote)
                            .bold(true)
                    }
                    .padding(2)
                    .padding([.horizontal],2)
                    .foregroundColor(.white)
                    .background(Color.blue.cornerRadius(3))
                    .padding([.top,.leading],6)
                    .opacity(item.isVerified ? 1 : 0)
                }
            
                .overlay(alignment: .bottomLeading) {
                    Text("Disponible en gros")
                        .font(.caption2)
                        .bold(true)
                        .padding(2)
                        .padding([.horizontal],2)
                        .foregroundColor(.white)
                        .background(Color.green.cornerRadius(3))
                        .padding([.bottom,.leading],6)
                        .opacity(item.wholeSale ? 1 : 0)
                }
            HStack{
                Image("seller")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .mask {
                        Circle()
                    }
                
                VStack(alignment:.leading){
                    Text("NASIBA HAFIZ,")
                        .textCase(.uppercase)
                    
                    Text("Chandigarh")
                }
                .font(.caption2)
                .foregroundColor(.gray)
            }
            
            Text("Dark Kaftan Yellow")
                .font(.caption)
            
            
            HStack(alignment:.bottom,spacing:5){
                Text("47,314")
                    .font(.subheadline)

                Text("xaf")
                    .textCase(.uppercase)
                    .font(.footnote)
            }
            
            Divider()
                .frame(width: 150)
            
            
            HStack{
                Text("Save to Wishlist")
                    .font(.footnote)
                    .foregroundColor(.green.opacity(0.9))
                
                Image(systemName: "heart")
            }
        }
    }
}

struct NearYouView_Previews: PreviewProvider {
    static var previews: some View {
        NearYouView(item: .init(itemImage: ImageUtility.darkKaftanYellow.image, itemName: "Dark Kaftan Yellow", sellerName: "NASIBA HAFIZ,", sellerAddress: "Chandigarhq", isVerified: true, wholeSale: true, itemPrice: 47_314))
    }
}
