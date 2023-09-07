//
//  ProfileThreadFilter.swift
//  Talk
//
//  Created by Francis Gonzales on 9/7/23.
//

import SwiftUI

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads : return "Threads"
        case .replies : return "Replies"
        }
    }
    
    var id: Int {return self.rawValue}
}
