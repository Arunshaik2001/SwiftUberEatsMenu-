//
//  MenuOptionsList.swift
//  UberEatsMenu
//
//  Created by Shaik Ahron on 04/02/23.
//

import SwiftUI

struct MenuOptionsList: View {
    
    @Binding var selectedOptions: MenuBarOptions
    @Binding var currentOptions: MenuBarOptions
    @Namespace var animation
    
    
    var body: some View {
        ScrollViewReader{ proxy in
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 30){
                    ForEach(MenuBarOptions.allCases, id: \.self){ item in
                        VStack{
                            Text(item.title)
                                .foregroundColor(item == currentOptions ? .black : .gray)
                            
                            if(item == currentOptions){
                                Capsule()
                                    .fill(.black)
                                    .matchedGeometryEffect(id: "item", in: animation)
                                    .frame(height: 3)
                                    .padding(.horizontal, -10)
                            }else{
                                Capsule()
                                    .fill(.clear)
                                    .frame(height: 3)
                                    .padding(.horizontal, -10)
                            }
                        }
                        .onTapGesture{
                            
                            withAnimation(.easeInOut){
                                self.selectedOptions = item
                                proxy.scrollTo(item, anchor: .topTrailing)
                            }
                        }
                    }
                    .onChange(of: currentOptions){_ in
                        proxy.scrollTo(currentOptions, anchor: .topTrailing)
                    }
                }
            }
        }
    }
}

struct MenuOptionsList_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionsList(selectedOptions: .constant(.japansese), currentOptions: .constant(.japansese))
    }
}
