//
//  ContentView.swift
//  MasterMind-Game
//
//  Created by Gizem Tuğuz on 19.02.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            pegs(colors: [.red, .green, .green, .yellow])
            pegs(colors: [.red, .blue, .green, .red])
            pegs(colors: [.red, .yellow, .green, .blue])
            //pegs(colors: [.red, .green, .green])
        }
        .padding()

    }
    /* var pegs: some View {
        HStack{
            Circle().foregroundStyle(.red)
            Circle().foregroundStyle(.green)
            Circle().foregroundStyle(.green)
            Circle().foregroundStyle(.yellow)
        }
    } */
    
    func pegs(colors: Array<Color> = []) -> some View {
        HStack{
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius:10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            //bu sayede index out of rage hatası kaldırıldı yukarıda 3 elemanlı bir öge de olsa compile edilebildi
            
            MatchMakers(matches: [.exact, .inexact, .nomatch, .exact])
            
            /*
            HStack{
                VStack{
                    Circle().strokeBorder(Color.primary, lineWidth: 2) .aspectRatio(1, contentMode: .fit)
                    Circle()
                }
                VStack{
                    Circle()
                    Circle()
                }
            }
            */
            /*
            Circle().foregroundStyle(colors[0])
            Circle().foregroundStyle(colors[1])
            Circle().foregroundStyle(colors[2])
            Circle().foregroundStyle(colors[3])
            */
            
        }
    }
    
}


#Preview {
    ContentView()
}
