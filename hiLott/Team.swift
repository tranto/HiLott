//
//  Team.swift
//  hiLott
//
//  Created by tranto on 20/4/20.
//  Copyright © 2020 Tran To. All rights reserved.
//

import Foundation

struct Member: Hashable, Identifiable {
    var id: Int { hashValue }
    var name: String
}

class Team: ObservableObject {

    static var availableMembers = [
        Member(name: "Erson"),
        Member(name: "Michael"),
        Member(name: "Anirudh"),
        Member(name: "Reece Liu"),
        Member(name: "Alanc Liu"),
        Member(name: "Tran")
    ]

    static func getAvailablePens() -> [Member] {
        return availableMembers
    }
}
