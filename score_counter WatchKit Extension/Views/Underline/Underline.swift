//
//  Underline.swift
//  score_counter WatchKit Extension
//
//  Created by MACBOOK on 25.10.2020.
//

import SwiftUI

struct Underline: View {
    var height: CGFloat
    var color: Color
    
    var body: some View {
        Rectangle().frame(height: height)
            .foregroundColor(Color.white)
    }
}

struct Underline_Previews: PreviewProvider {
    static var previews: some View {
        Underline(height: 2, color: Color.white)
    }
}
