//
//  MatchMakers.swift
//  MasterMind-Game
//
//  Created by Gizem Tuğuz on 19.02.2026.
//
import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
        
}

struct MatchMakers: View {
    var matches: [Match]
    var body: some View {
        VStack{
            HStack{
                matchMarker(peg: 0)
                matchMarker(peg: 1)
            }
            HStack{
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
        }
    }
    
    //@ViewBuilder
    func matchMarker(peg: Int) -> some View {
        let exactCount = matches.count{ $0 == .exact } //Shorthand Argumant Name $0
        let foundCount = matches.count{ $0 != .nomatch}
        return Circle()
            .fill(exactCount > peg ? Color.primary : Color.clear) //ternary operator
            .strokeBorder(foundCount > peg ? Color.primary : Color.clear, lineWidth: 2).aspectRatio(1, contentMode: .fit)
    }
    
    /*
    func isExact(match: Match) -> Bool {
        match == .exact
    }
    
    func isNoMatch(match: Match) -> Bool {
        match == Match.nomatch
    }
    */
}

#Preview {
    MatchMakers(matches: [.exact, .inexact, .nomatch, .exact])
}


