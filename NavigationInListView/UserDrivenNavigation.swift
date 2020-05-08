//
//  UserDrivenNavigation.swift
//  NavigationInListView
//
//  Created by Ramill Ibragimov on 08.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct UserDrivenNavigation: View {
    
    let items = [Item(name: "Item 1"), Item(name: "Item 2"), Item(name: "Item 3")]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(destination: DetailView(item: item)) {
                        Text(item.name)
                    }
                }
            }
            .navigationBarTitle("Items")
        }
    }
}
