//
//  ContentView.swift
//  Native Sheet
//
//  Created by Parker Ehret on 8/12/23.
//

import Foundation
import SwiftUI


struct ContentView: View {
    @State var presentSheet = false
    
    @State private var onTheDay = false
    @State private var oneDayBefore = false
    @State private var oneWeekBefore = false
    @State private var oneMonthBefore = false
        
    func edit() { }
    func delete() { }

    var body: some View {

            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        .frame(width: 44, height: 44)
                        .cornerRadius(18)
                    
                    Text("13")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(.leading, 16)
                .padding(.vertical, 16)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Willow's 4th Birthday")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                    }
                    HStack {
                        Text("Willow will turn 4 this year")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.5))
                    }
                    .padding(.top, -8)
                }
                .padding(.leading, 8)
                Spacer()
            
            }
            .background(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.05))
            .cornerRadius(28)
            .padding ()
            .onTapGesture {
                presentSheet = true
            }
            
            
            .sheet(isPresented: $presentSheet) {
            } content: {
                
                    VStack{
                        
                        HStack {
                            Spacer()
                            
                            VStack {
                                HStack {
                                    Spacer()
                                    
                                    Menu {
                                        Button(action: edit) {
                                            Label("Edit Event", systemImage: "pencil")
                                        }
                                        .foregroundColor(.gray)
                                        
                                        Button(role: .destructive, action: delete) {
                                            Label("Delete Event", systemImage: "trash")
                                        }
                                            .foregroundColor(.red)
                                    } label: {
                                        Image(systemName: "ellipsis")
                                            .font(.title2)
                                            .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.5))
                                            .fontWeight(.medium)
                                            .frame(width: 28, height: 28, alignment: .center)
                                            .background(Color.white.opacity(0))
                                            .cornerRadius(4)
                                            .padding(.top, 20)
                                            .padding(.trailing, 16)
                                    }
        
                                }
                                
                                
                                HStack {
                                    Text("Image")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                                        .frame(width: 84, height: 84, alignment: .center)
                                        .background(Color(.white))
                                        .cornerRadius(12)
                                        .padding(.bottom, 12)
                                        .padding(.top, -24)
                                    
                                }
                                
                                VStack {
                                    Text("Willow's 4th Birthday")
                                        .foregroundColor(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                                        .font(.system(size: 22, weight: .semibold, design: .rounded))
                                        .frame(height: 24, alignment: .center)
                                    
                                    Text("February 13th, 2024")
                                        .foregroundColor(.black)
                                        .font(.system(size: 20, weight: .medium, design: .rounded))
                                        .frame(height: 20, alignment: .center)
                                    
                                }
                                Spacer()
                                
                            }
                            Spacer()
                            
                        }
                        .frame(height: 214, alignment: .center)
                        .background(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(0.05))
                        .cornerRadius(24)
                        .padding(.top, 0)
                        
                        HStack {
                            Text("NOTIFICATIONS FOR THIS EVENT")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .medium, design: .rounded))
                                .padding(.top, 32)
                                .padding(.bottom, 0)
                                .padding(.leading, 12)
                            
                            Spacer()
                        }
                        
                        
                        HStack {
                            Toggle("On the day", isOn: $onTheDay)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 12)
                        .padding(.horizontal, 12)
                        
                        
                        HStack {
                            Toggle("One day before", isOn: $oneDayBefore)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 8)
                        .padding(.horizontal, 12)
                        
                        
                        HStack {
                            Toggle("One week before", isOn: $oneWeekBefore)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 8)
                        .padding(.horizontal, 12)
                        
                        
                        HStack {
                            Toggle("One month before", isOn: $oneMonthBefore)
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold, design: .rounded))
                                .tint(Color(red: 0.97, green: 0.145, blue: 0.52).opacity(1.0))
                        }
                        .padding(.top, 8)
                        .padding(.horizontal, 12)
                        
                    }
                    .presentationDetents([.height(540)])
                    .presentationCornerRadius(48)
                    .padding(.horizontal, 24)
                    .padding(.top, 20)
                    .padding(.bottom, 40)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
