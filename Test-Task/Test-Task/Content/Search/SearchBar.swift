//
//  SearchBar.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search", text: $text, onEditingChanged: { editing in
                isEditing = editing
            }).padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            
            if isEditing {
                Button(action: {
                    text = ""
                    isEditing = false
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }.padding(.trailing, 8)
            }
        }.padding(.vertical)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Searching..."))
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
