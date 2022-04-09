//
//  CustomRadius.swift
//  DemoAuthendication
//
//  Created by Ahmet OZBERK on 8.04.2022.
//

import Foundation
import SwiftUI

struct CustomRadius: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(CustomRadius(radius: radius, corners: corners))
    }
}
