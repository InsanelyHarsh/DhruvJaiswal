//
//  ContentView.swift
//  Dhruv Jaiswal
//
//  Created by Harsh Yadav on 03/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        ZStack(alignment:.bottom){
            HomeView()
            
            HStack(alignment:.bottom){
                ForEach(Tabbar.allCases,id:\.tabTitle){ tab in
                    Spacer()
                    VStack{
                        Text(tab.tabIcon)
                        Text(tab.tabTitle)
                            .font(.caption2)
                    }
                    Spacer()
                }
            }
            .padding(.top,5)
            .background(Color.white.ignoresSafeArea())
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


enum Tabbar:CaseIterable{
    case home
    case categories
    case wishList
    case inbox
    case account
    
    var tabTitle:String{
        switch self {
        case .home:
            return "Home"
        case .categories:
            return "Categories"
        case .wishList:
            return "WishList"
        case .inbox:
            return "Inbox"
        case .account:
            return "Account"
        }
    }
    
    var tabIcon:Image{
        switch self {
        case .home:
            return Image("home")
        case .categories:
            return Image("categories")
        case .wishList:
            return Image("wishlist")
        case .inbox:
            return Image("inbox")
        case .account:
            return Image("account")
        }
    }
}
