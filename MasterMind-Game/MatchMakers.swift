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
    func matchMarker(peg: Int) -> some View {
        let exactCount: Int = matches.count(where: { match in match == .exact })
        let foundCount: Int = matches.count(where: { match in match != .nomatch })
        return Circle()
            .fill(exactCount > peg ? Color.primary : Color.clear)
            .strokeBorder(foundCount > peg ? Color.primary : Color.clear, lineWidth: 2).aspectRatio(1, contentMode: .fit)
    }
}

#Preview {
    MatchMakers(matches: [.exact, .inexact, .nomatch, .exact])
}
