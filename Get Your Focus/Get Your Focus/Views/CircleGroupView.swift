//
//  CircleGroupView.swift
//  Get Your Focus
//
//  Created by Admin on 19/12/22.
//

import SwiftUI

struct CircleGroupView: View {
    
    @State var ShapeColor : Color
    @State var ShapeOpacity : Double
    @State private var isAniimating : Bool = false
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260 , height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260,height: 260,alignment: .center)
        }// Zstack
        .blur(radius: isAniimating ? 0 : 10)
        .opacity(isAniimating ? 1 : 0)
        .scaleEffect(isAniimating ? 1 : 0.5)
        .animation(.easeOut(duration: 0.5), value: isAniimating)
        .onAppear(perform: {
            isAniimating = true
        })
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
        
    }
}
