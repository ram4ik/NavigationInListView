//
//  DetailView.swift
//  NavigationInListView
//
//  Created by Ramill Ibragimov on 08.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let item: Item
    
    var body: some View {
        Text("Detail view for \(item.name).")
    }
}
