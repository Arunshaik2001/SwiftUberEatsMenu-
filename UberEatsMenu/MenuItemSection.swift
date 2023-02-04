//
//  MenuItemSection.swift
//  UberEatsMenu
//
//  Created by Shaik Ahron on 04/02/23.
//

import SwiftUI

struct MenuItemSection: View {
    let option: MenuBarOptions
    @Binding var currentOption: MenuBarOptions
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(option.title)
                .font(.title.bold())
            .padding(.vertical)
            
            ForEach(option.foodItems){ foodItem in
                HStack(spacing: 16){
                    VStack(alignment: .leading, spacing: 8){
                        Text(foodItem.title)
                            .font(.title3.bold())
                        
                        Text(foodItem.description)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text("Price: \(foodItem.price)")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Image(foodItem.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 88)
                        .clipped()
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Divider()
            }
        }
        .modifier(OffsetModifier(option: option, currentOption: $currentOption))
        
    }
}

struct MenuItemSection_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemSection(option: .japansese, currentOption: .constant(.japansese))
    }
}
