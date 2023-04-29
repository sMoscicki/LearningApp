//
//  LearnCardViewRow.swift
//  LearningApp
//
//  Created by s.Moscicki on 29/04/2023.
//

import SwiftUI

struct LearnCardViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var body: some View {
        
        let lesson = model.currentModule!.content.lessons[index]
        
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack(spacing: 30){
                Text(String(index + 1))
                    .bold()
                
                VStack(alignment: .leading){
                    Text(lesson.title)
                        .bold()
                    Text(lesson.duration)
                    
                }

            }
            .padding()
        }
        .padding(.bottom, 5)
        
    }
}

