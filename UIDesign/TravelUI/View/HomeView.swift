//
//  HomeView.swift
//  UIDesign
//
//  Created by Muhammed Nadeem M A on 06/04/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                // Heading
                HStack(alignment: .top) {
                    Text("Lets Explore\nthe World")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "map")
                        .fontWeight(.semibold)
                        .foregroundStyle(.pink)
                        .offset(y: 10)
                }
                
                // Search Bar
                HStack {
                    TextField("Enter name or category", text: $searchText)
                        .fontWeight(.bold)
                        .padding(.trailing, 5)
                    Image(systemName: "magnifyingglass")
                        .fontWeight(.bold)
                        .foregroundStyle(.gray)
                }
                .padding()
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.vertical, 8)
                
                // Categories
                VStack(alignment: .leading) {
                    Text("Category")
                        .font(.title2)
                        .fontWeight(.semibold)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0...5, id: \.self) { _ in
                                Text("Top 10 Places")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .padding()
                                    .background(.gray.opacity(0.2))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                .padding(.top, 16)
                
                // Popular Places
                VStack(alignment: .leading) {
                    Text("Popular Destinations")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 16) {
                            ForEach(topTouristPlaces) { place in
                                Image(place.imageName)
                                    .resizable()
                                    .frame(width: 320, height: 220)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .overlay(alignment: .bottomLeading) {
                                        HStack(alignment: .bottom) {
                                            VStack(alignment: .leading) {
                                                Text(place.placeName)
                                                    .font(.system(size: 24))
                                                    .fontWeight(.bold)
                                                Text(place.touristNote)
                                                    .font(.footnote)
                                                    .fontWeight(.light)
                                            }
                                            Spacer()
                                            // Explore Button
                                            NavigationLink {
                                                DestinationDetailView(place: place)
                                            } label: {
                                                exploreButton
                                            }
                                        }
                                        .foregroundStyle(.white)
                                        .padding()
                                    }
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                .padding(.top, 16)
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
    }
    
    @ViewBuilder
    private var exploreButton: some View {
        Text("Explore")
            .font(.system(size: 14))
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.black.opacity(0.4))
            )
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 1)
            )
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
