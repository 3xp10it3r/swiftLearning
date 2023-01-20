//
//  Video.swift
//  SwiftUI-Videos
//
//  Created by Digvijay Gupta on 20/01/23.
//

import Foundation

struct Video: Identifiable {
    var id          = UUID()
    var image       : String
    var title       : String
    var uploadDate  : String
}


struct Videos {
   static let topTwelve = [
        Video(image: "90-90", title: "the 90-90 rule is the best rule",          uploadDate: "January 20, 2023"),
        Video(image: "37-tips", title: "37 tips to change your life",            uploadDate: "January 20, 2023"),
        Video(image: "2018-setup", title: "2018 mac os setup for ios dev",       uploadDate: "January 20, 2023"),
        Video(image: "aluna", title: "the big aluna project glimps",             uploadDate: "January 20, 2023"),
        Video(image: "average-dev", title: "average dev to pro in 60 days",      uploadDate: "January 20, 2023"),
        Video(image: "child-vc", title: "connecting child vc to parent vc",      uploadDate: "January 20, 2023"),
        Video(image: "hig", title: "hig a story of high powered machine",        uploadDate: "January 20, 2023"),
        Video(image: "hired", title: "I am hired as Google developer",           uploadDate: "January 20, 2023"),
        Video(image: "lazy", title: "Being lazy is only cause to failure",       uploadDate: "January 20, 2023"),
        Video(image: "macaw", title: "Macaw is makka in Punjab lets eat",        uploadDate: "January 20, 2023"),
        Video(image: "nav-controller", title: "Controlling nav using segue in storyboard", uploadDate: "January 20, 2023"),
        Video(image: "portfolio", title: "Managing positive portfolio in just 19 rupees", uploadDate:  "January 20, 2023"),
   ]
}
