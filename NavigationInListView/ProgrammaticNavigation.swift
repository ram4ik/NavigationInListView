//
//  ProgrammaticNavigation.swift
//  NavigationInListView
//
//  Created by Ramill Ibragimov on 08.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ProgrammaticNavigation: View {
    @State private var items = [Item(name: "Item 1"), Item(name: "Item 2"), Item(name: "Item 3")]
    @State private var selectedItemId: UUID?
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink(
                        destination: DetailView(item: item), tag: item.id, selection: self.$selectedItemId) {
                        Text(item.name)
                    }
                    .listRowBackground(
                        // only programmatically selected item will get the custom background color
                        item.id == self.selectedItemId ? Color.blue : Color(UIColor.systemBackground)
                    )
                }
            }
            .navigationBarItems(trailing:
                Button(action: {
                    let newItem = Item(name: "Item \(self.items.count + 1)")
                    self.items.append(newItem)
                    
                    if self.horizontalSizeClass == .regular {
                        // runtime issues if current selection is not nil
                        self.selectedItemId = newItem.id
                    }
                    
                }) {
                    Text("Add")
                }
            )
            .navigationBarTitle("Items")
        }
    }
}
