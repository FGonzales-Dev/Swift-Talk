//
//  ProfileView.swift
//  Talk
//
//  Created by Francis Gonzales on 9/7/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20){
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 20){
                        VStack(alignment: .leading, spacing: 4){
                            Text("Charles Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("charles_lecerc")
                                .font(.subheadline)
                        }
                        
                        Text("Formula 1 driver for ferra")
                            .font(.footnote)
                        
                        Text("2 Followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button{}label:{
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) {filter in
                            VStack{
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 100, height: 1)
                                }
                            }
                            
                            .onTapGesture{
                                withAnimation(.spring()){
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
