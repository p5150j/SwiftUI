//
//  CourseStore.swift
//  DesignCode
//
//  Created by Patrick Ortell on 7/20/21.
//

import SwiftUI
import Contentful
import Combine

let clinet = Client(spaceId: "5wndy7owmgmk", accessToken: "d-XLNaaU_LS3obTsyXSXvWNgj6YE_Dbc9_t4u6Pxieo")


func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)
    
    clinet.fetchArray(of: Entry.self, matching: query) { result in
//        print(result)
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
            
        case .failure(let failure):
            print(failure)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        getArray(id: "course") { items in
            items.forEach { item in
                self.courses.append(Course(
                                        title: item.fields["title"] as! String,
                                        subtitle: item.fields["subtitle"] as! String,
                                        image: #imageLiteral(resourceName: "Avatar"),
                                        logo: #imageLiteral(resourceName: "Logo1"),
                                        color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1),
                                        show: false
                ))
            }
        }
    }
}
