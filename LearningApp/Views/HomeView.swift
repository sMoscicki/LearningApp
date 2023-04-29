//
//  ContentView.swift
//  LearningApp
//
//  Created by s.Moscicki on 26/04/2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        
        NavigationView{
            
            VStack(alignment: .leading) {
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                ScrollView {
                    
                    LazyVStack{
                        
                        ForEach(model.modules){ module in
                            NavigationLink(destination: LearnCardView()
                                .onAppear(perform: {
                                    model.beginModule(module.id)
                                }),
                                           label: {
                                //MARK: Learn Card
                                HomeViewRow(image: module.content.image, title: "Learn \(module.category)" , descripton: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                                
                            })
                            
                                
              
                            //MARK: Test Card
                            HomeViewRow(image: module.test.image, title: "\(module.category) Test" , descripton: module.test.description, count: "\(module.test.questions.count) Lessons", time: module.test.time)
                            
                            
                        }
                    }
                    .accentColor(.black)
                    .padding()
                }
            }
            .navigationTitle("Get Started")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
