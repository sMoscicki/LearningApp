//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by s.Moscicki on 29/04/2023.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title : String
    var descripton : String
    var count: String
    var time: String
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10){
                    Text(title)
                        .bold()
                    
                    Text(descripton)
                        .padding(.bottom, 20)
                    
                    HStack{
                        
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(count)
                            .font(.caption)
                        
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 16, height: 16)
                        Text(time)
                            .font(.caption)
                        
                        
                        
                    }
                    
                }
                .padding(.leading, 20)
            }
            .padding(.horizontal)
        }
        
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn Swift", descripton: "Some Description", count: "10 Lessons", time: "2 Hours")
    }
}
