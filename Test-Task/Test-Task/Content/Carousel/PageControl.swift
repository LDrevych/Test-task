//
//  PageControl.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct PageControl: View {
    
    @Binding var currentPage: Int
    let carouselModel: [CarouselModel]
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(carouselModel.indices, id: \.self) { index in
                Circle()
                    .fill(Color.black.opacity(currentPage == index ? 1 : 0.1))
                    .frame(width: 10, height: 10)
                    .scaleEffect(currentPage == index ? 1.4 : 1)
                    .animation(.spring(), value: currentPage == index)
            }
        }
    }
}

struct PageControl_Previews: PreviewProvider {
    static var previews: some View {
        PageControl(currentPage: .constant(0), carouselModel: [CarouselModel(id: UUID()), CarouselModel(id: UUID()), CarouselModel(id: UUID()), CarouselModel(id: UUID()), CarouselModel(id: UUID())])
    }
}
