//
//  VisitedButton.swift
//  NationalParks
//
//  Created by Sidhant Puntambekar on 12/21/22.
//

import Foundation
import SwiftUI

struct VisitedButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("",
                  systemImage: isSet ? "checkmark.square.fill": "checkmark.square")
        }
    }
}

struct VisitedButton_Preview: PreviewProvider {
    static var previews: some View {
        VisitedButton(isSet: .constant(true))
    }
}
