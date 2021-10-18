//
//  ContentView.swift
//  HW1-Graphing
//
//  Created by Hannn on 2021/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("watame")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
            ZStack {
                Group {
                    // Body
//                    Skin()
//                        .fill(Color(red: 0.98, green: 0.94, blue: 0.89))
//                    Skin()
//                        .stroke(Color.secondary, lineWidth: 0.3)
                    
//                    WhiteCloths_leftup()
//                        .stroke(Color.red, lineWidth: 0.3)
                    WhiteCloths_leftdown()
                        .stroke(Color.red, lineWidth: 0.3)
//                    WhiteCloths_rightup()
//                        .stroke(Color.red, lineWidth: 0.3)
                    WhiteCloths_rightdown()
                        .stroke(Color.red, lineWidth: 0.3)
//                    WhiteCloths_center2()
//                        .stroke(Color.red, lineWidth: 0.3)
                    WhiteCloths_center1()
                        .stroke(Color.red, lineWidth: 0.3)
                    
                    // white cloths
                    Path { path in
                        // center-up
                    }
                    .stroke(Color.primary, lineWidth: 0.3)
                }
                
                // Head
                Group {
                    FaceView()
                    EyesView()
                    FrontHairView()
                    ShofarView()
                    HairpinView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FaceView: View {
    var body: some View {
        ZStack {
            // face
            Face()
                .fill(Color(red: 1, green: 0.96, blue: 0.91))
            Face()
                .stroke(Color.secondary, lineWidth: 0.2)
            // nose
            Path(ellipseIn: CGRect(x: 174.5, y: 107, width: 0.6, height: 0.6))
                .fill(Color.secondary)

            // lip
            Path { path in
                path.move(to: CGPoint(x: 168, y: 121))
                path.addQuadCurve(to: CGPoint(x: 181.5, y: 121), control: CGPoint(x: 175, y: 125))
            }
            .stroke(Color.secondary, lineWidth: 0.4)
            // ears
            Ear()
                .fill(Color(red: 1, green: 0.96, blue: 0.75))
            Ear()
                .stroke(Color.secondary, lineWidth: 0.2)
            Ear()
                .fill(Color(red: 1, green: 0.96, blue: 0.75))
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11)
            Ear()
                .stroke(Color.secondary, lineWidth: 0.2)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11)
          }
    }
}

struct EyesView: View {
    var body: some View {
        ZStack {
            Group {
                EyeWhite()
                    .fill(.white)
                EyeWhite()
                    .fill(.white)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .offset(x: -11)

                Iris1()
                    .fill(Color(red: 0.1, green: 0.1, blue: 0.5))
                Iris1()
                    .fill(Color(red: 0.1, green: 0.1, blue: 0.5))
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .offset(x: -11)

                Iris2()
                    .fill(Color(red: 0.85, green: 0.77, blue: 0.94))
                Iris2()
                    .fill(Color(red: 0.85, green: 0.77, blue: 0.94))
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .offset(x: -11)

                Eyelash()
                    .fill(.black)
                Eyelash()
                    .fill(.black)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .offset(x: -11)
            }

            Group {
                Path(ellipseIn: CGRect(x: 147.5, y: 90, width: 3.7, height: 2.5))
                    .fill(.white)
                Path(ellipseIn: CGRect(x: 33, y: 136.5, width: 3.3, height: 1.2))
                    .rotation(.degrees(30))
                    .fill(.white)
                Path(ellipseIn: CGRect(x: 188, y: 90, width: 3.7, height: 2.5))
                    .fill(.white)
                Path(ellipseIn: CGRect(x: 69, y: 116.2, width: 3.3, height: 1.2))
                    .rotation(.degrees(30))
                    .fill(.white)
            }
        }
    }
}

struct FrontHairView: View {
    var body: some View {
        ZStack {
            Hair2()
                .fill(Color(red: 1, green: 0.98, blue: 0.78))
            Hair2()
                .stroke(Color.secondary, lineWidth: 0.2)
            Hair2()
                .fill(Color(red: 1, green: 0.98, blue: 0.78))
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11)
            Hair2()
                .stroke(Color.secondary, lineWidth: 0.2)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11)

            Hair1()
                .fill(Color(red: 1, green: 0.98, blue: 0.84))
            Hair1()
                .stroke(Color.secondary, lineWidth: 0.2)

            Ahoge()
                .fill(Color(red: 1, green: 0.98, blue: 0.84))
            Ahoge() .stroke(Color.secondary, lineWidth: 0.2)

            Eyebrow()
                .stroke(Color.secondary, lineWidth: 0.4)
            Eyebrow()
                .stroke(Color.secondary, lineWidth: 0.4)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11)
        }
    }
}

struct ShofarView: View {
    var body: some View {
        ZStack {
            // left shofar
            Shofar_Back()
                .fill(Color(red: 0.43, green: 0.40, blue: 0.36))
            Shofar_Front()
                .fill(Color(red: 0.67, green: 0.65, blue: 0.57))

            // right shofar
            Shofar_Back()
                .fill(Color(red: 0.43, green: 0.40, blue: 0.36))
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11.7)
            Shofar_Front()
                .fill(Color(red: 0.67, green: 0.65, blue: 0.57))
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11.7)
            
            // pink ribbon
            Ribbon()
                .fill(Color(red: 1, green: 0.53, blue: 0.53))
            Ribbon()
                .stroke(Color.secondary, lineWidth: 0.3)
            Ribbon()
                .fill(Color(red: 1, green: 0.53, blue: 0.53))
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11.7)
            Ribbon()
                .stroke(Color.secondary, lineWidth: 0.3)
                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                .offset(x: -11.7)
        }
    }
}

struct HairpinView: View {
    var body: some View {
        ZStack {
            // big hairpin
            BigHairpin()
                .fill(Color(red: 0.99, green: 0.66, blue: 0.63))
            BigHairpin()
                .stroke(Color.secondary, lineWidth: 0.3)
            Path(ellipseIn: CGRect(x: 202, y: 39.2, width: 7, height: 7))
                .fill(.white)

            // thin hairpin - stick
            ThinHairpin_Stick()
                .fill(Color(red: 1, green: 0.80, blue: 0.79))
            ThinHairpin_Stick()
                .stroke(Color.secondary, lineWidth: 0.2)
            ThinHairpin_Stick()
                .fill(Color(red: 1, green: 0.80, blue: 0.79))
                .offset(x: 2, y: 5.2)
            ThinHairpin_Stick()
                .stroke(Color.secondary, lineWidth: 0.2)
                .offset(x: 2, y: 5.2)

            // thin hairpin - ball
            Path(ellipseIn: CGRect(x: 211.5, y: 53.7, width: 3.5, height: 3.5))
                .fill(.red)
            Path(ellipseIn: CGRect(x: 211.5, y: 53.7, width: 3.5, height: 3.5))
                .fill(.red)
                .offset(x: 1, y: 5.3)
        }
    }
}
