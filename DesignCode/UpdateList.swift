//
//  UpdateList.swift
//  DesignCode
//
//  Created by Patrick Ortell on 7/16/21.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
      
        NavigationView {
            List(updateData) { update in
                NavigationLink(destination: Text(update.text)){
                    HStack {
                        Image(update.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .background(Color.black)
                            .cornerRadius(20)
                            .padding(.trailing, 4)
                        
                        VStack(alignment: .leading, spacing: 8.0) {
                            
                            Text(update.title)
                                .font(.system(size: 20, weight: .bold))
                            
                            Text(update.text)
                                .lineLimit(2)
                                .font(.subheadline)
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            
                            Text(update.date)
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)

                                
                                
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationBarTitle(Text("Updates"))
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}

struct Update: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var date: String
}


let updateData =
  [
    Update(image: "Card1", title: "SwiftUI", text: "Bacon ipsum dolor amet strip steak picanha chicken leberkas biltong. Pork belly capicola porchetta beef ribs ham chicken. .", date: "Jan 1"),
    Update(image: "Card2", title: "More of the same", text: "Bacon ipsum dolor amet strip steak picanha chicken leberkas biltong. Pork belly capicola porchetta beef .", date: "Jan 1"),
    Update(image: "Card3", title: "and another", text: "Bacon ipsum dolor amet strip steak picanha chicken leberkas biltong. Pork belly capicola porchetta beef ribs ham chicken. Pork ham hock biltong, boudin turducken turkey pig tenderloin.", date: "Jan 1"),
    Update(image: "Card4", title: "what about me?", text: "Bacon ipsum dolor amet strip steak picanha chicken leberkas biltong. Pork belly capicola porchetta ", date: "Jan 1")
  
  ]

