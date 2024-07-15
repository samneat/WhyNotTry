//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Sam Neat on 10/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    var activities = ["Archery", "Baseball", "Badminton", "Basketball", "Bowling", "Boxing", "Climbing", "Cricket", "Curling", "Fencing","Fishing", "Golf", "Handball","Hiking", "Hockey","Kickboxing","Lacrosse", "Pickleball", "Pilates", "Rugby", "Sailing", "Skateboarding", "Snowboarding","Surfing", "Softball", "Squash", "Taichi", "Tennis", "Volleyball", "Wrestling", "Yoga"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red, .teal, .yellow, .brown, .black]
    
    @State private var selected = "Archery"
    @State private var id = 1
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        
        VStack{
            Text("Why Not Try ...")
                .font(.largeTitle.bold())
        }
        
        Spacer()
        
        VStack {
            
            Circle()
                .fill(selectedColor)
                .padding()
                .overlay(Image(systemName: "figure.\(selected.lowercased())"))
                .font(.system(size: 144))
                .foregroundStyle(.white)
            
            Text("\(selected)")
                .font(.title)
            
        }
        .transition(.slide)
        .id(id)
        
        Spacer()
        
        Button("Try Another Sport"){
            withAnimation(.easeInOut(duration: 1)) {
                selected = activities.randomElement() ?? "Archery"
                selectedColor = colors.randomElement() ?? .blue
                id += 1
            }
        }
        .buttonStyle(.borderedProminent)
        .tint(selectedColor)
    }
}

#Preview {
    ContentView()
}
