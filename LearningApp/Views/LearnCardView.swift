//
//  LearnView.swift
//  LearningApp
//
//  Created by s.Moscicki on 29/04/2023.
//

import SwiftUI

struct LearnCardView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView{
            
            LazyVStack{
                
                if model.currentModule != nil{
                    
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        
                        LearnCardViewRow(index: index)
            
                    }
                }
            }
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")
        }
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnCardView()
            .environmentObject(ContentModel())
    }
}
