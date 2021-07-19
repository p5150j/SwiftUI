//
//  MyView.swift
//  DesignCode
//
//  Created by Patrick Ortell on 7/17/21.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(mySectionData) { item in
                    GeometryReader { geometry in
                        MySectionView(mySection: item)
                            .rotation3DEffect(Angle(degrees:
                                                        Double(geometry.frame(in: .global).minX - 30) / -20
                            ), axis: (x: 0, y: 10.0, z: 0))
                    }
                    .frame(width:275, height: 275)
                }
            }
            .padding(30)
            .padding(.bottom, 30)
        }
        
        Spacer()
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}



struct MySection: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: Image
    var feedImage: Image
    
}

let mySectionData = [
    MySection(title: "Prototype designs in SwiftUI", text: "18 sections", logo: "Logo1", image: Image("Card2"), feedImage:Image("vi")),
    MySection(title: "Bruagttias and hoes", text: "22 sections", logo: "Logo2", image: Image("Card2"), feedImage:Image("vi2")),
    MySection(title: "Bruagttias and hoes", text: "22 sections", logo: "Logo2", image: Image("Card2"), feedImage:Image("vi3")),
    MySection(title: "Bruagttias and hoes", text: "22 sections", logo: "Logo2", image: Image("Card2"), feedImage:Image("vi4"))
    
]


struct MySectionView: View {
    var mySection: MySection
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                mySection.feedImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 210)
                    .padding(.horizontal, 20)
                    .frame(width: 275, height: 275)
                    .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))).opacity(0.6)
                    .cornerRadius(30)
                    .shadow(color: .black.opacity(0.4), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            }
        }
        
        ZStack {
            Text(mySection.title)
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding(6)
                .foregroundColor(.white)
            Spacer()
        }
        .cornerRadius(10.0)
        .padding(15)
        
    }
    
}
