//
//  CourseStore.swift
//  DesignCode
//
//  Created by Patrick Ortell on 7/20/21.
//

import SwiftUI
import Contentful

let clinet = Client(spaceId: "5wndy7owmgmk", accessToken: "d-XLNaaU_LS3obTsyXSXvWNgj6YE_Dbc9_t4u6Pxieo")


func getArray() {
    let query = Query.where(contentTypeId: "course")
    
    clinet.fetchArray(of: Entry.self, matching: query) { result in
        print(result)
        print("wtf")
    }
}
