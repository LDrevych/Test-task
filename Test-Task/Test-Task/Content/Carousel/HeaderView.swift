//
//  HeaderView.swift
//  Test-Task
//
//  Created by ldrevych on 25.08.2023.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var currentPage: Int
    let carouselModel: [CarouselModel]
    
    var body: some View {
        VStack {
            Carousel(index: $currentPage, items: carouselModel) { model in
                GeometryReader { proxy in
                    let size = proxy.size
                    Image("horse")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width)
                        .cornerRadius(12)
                }
            }.frame(height: 300)
            PageControl(currentPage: $currentPage, carouselModel: carouselModel)
        }.padding(.bottom, 10)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(currentPage: .constant(0), carouselModel: [CarouselModel(id: UUID())])
    }
}
