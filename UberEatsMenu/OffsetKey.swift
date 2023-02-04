//
//  OffsetKey.swift
//  UberEatsMenu
//
//  Created by Shaik Ahron on 04/02/23.
//

import Foundation
import SwiftUI

struct OffsetKey: PreferenceKey{
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
