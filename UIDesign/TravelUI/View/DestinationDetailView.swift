//
//  DestinationDetailView.swift
//  UIDesign
//
//  Created by Muhammed Nadeem M A on 21/04/25.
//

import SwiftUI

struct DestinationDetailView: View {
    
    @State private var lineLimit: Bool = false
    @State private var isFavorited: Bool = false
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    
    let place: Place
    
    var body: some View {
        ScrollView {
            VStack {
                // Title
                Text("Explore \(place.placeName)")
                    .font(.headline)
                
                Image(place.imageName)
                    .resizable()
                    .frame(height: 380)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .overlay(alignment: .bottomLeading) {
                        HStack(alignment: .center, spacing: 10) {
                            Image(.credit)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Muhammed Nadeem M A")
                                    .font(.system(size: 16, weight: .bold))
                                Text("iOS Developer")
                                    .font(.subheadline)
                                    .opacity(0.8)
                            }
                        }
                        .foregroundStyle(.white)
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding(20)
                    }
                    .overlay(alignment: .topLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                                .foregroundStyle(.white)
                                .padding(10)
                                .background(.ultraThinMaterial)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                        }
                    }
                
                HStack {
                    Spacer()
                    Button {
                        withAnimation {
                            isFavorited.toggle()
                        }
                    } label: {
                        Image(systemName: isFavorited ? "heart.fill" : "heart")
                            .resizable()
                            .foregroundStyle(.pink)
                            .frame(width: 24, height: 24)
                            .padding()
                            .background(.white)
                            .cornerRadius(16)
                            .shadow(radius: 10)
                            .offset(x: -30, y: -30)
                    }
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(place.placeName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    Text(place.description)
                        .foregroundStyle(.secondary)
                        .lineLimit(lineLimit ? nil : 4)
                    Button {
                        withAnimation {
                            lineLimit.toggle()
                        }
                    } label: {
                        HStack {
                            Text(lineLimit ? "Read Less" : "Read More")
                            Image(systemName: "chevron.down")
                                .rotationEffect(Angle(degrees: lineLimit ? 180 : 0))
                        }
                        .foregroundStyle(.pink)
                    }
                }
                .offset(y: -26)
                
                VStack(alignment: .leading) {
                    Text("Popular Attractions")
                        .font(.headline)
                        .padding(.bottom)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 16) {
                            ForEach(place.popularAttractions, id: \.self) { _ in
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(width: 80, height: 80)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                
                Button {
                    print("Book clicked!")
                } label: {
                     Text("Book a tour")
                        .foregroundStyle(colorScheme == .dark ? Color.black : Color.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(colorScheme == .dark ? Color.white : Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(.vertical)
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DestinationDetailView(place: topTouristPlaces[1])
}
