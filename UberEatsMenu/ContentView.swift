//
//  ContentView.swift
//  UberEatsMenu
//
//  Created by Shaik Ahron on 04/02/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var selectedOption: MenuBarOptions = .japansese
    @State private var currentOption: MenuBarOptions = .japansese
    
    var body: some View {
        VStack{
            HStack(spacing: 16){
                Button{
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                }
                
                Text("Miami - South Beach")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                }
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            
            
            MenuOptionsList(selectedOptions: $selectedOption,currentOptions: $currentOption)
                .padding([.top, .horizontal])
                .overlay(Divider().padding(.horizontal, -16), alignment: .bottom)
            
            ScrollViewReader{ proxy in
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        ForEach(MenuBarOptions.allCases, id: \.self){
                            item in
                            MenuItemSection(option: item, currentOption: $currentOption)
                        }
                    }
                    .onChange(of: selectedOption){ _ in
                        withAnimation(.easeInOut){
                            proxy.scrollTo(selectedOption, anchor: .topTrailing)
                        }
                    }
                    .padding(.horizontal)
                }
                .coordinateSpace(name: "scroll")
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
