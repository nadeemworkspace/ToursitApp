//
//  Place.swift
//  UIDesign
//
//  Created by Muhammed Nadeem M A on 21/04/25.
//

import Foundation

struct Place: Identifiable {
    let id = UUID()
    let placeName: String
    let touristNote: String
    let imageName: String
    let description: String
    let popularAttractions: [String]
}

let topTouristPlaces: [Place] = [
    Place(
        placeName: "Paris, France",
        touristNote: "The city of love and lights.",
        imageName: "paris",
        description: "Paris, often called the City of Light, is one of the most visited cities in the world. It offers a timeless charm with its cobblestone streets, elegant architecture, and world-renowned landmarks. Whether you're admiring the Eiffel Tower at sunset, exploring the masterpieces inside the Louvre Museum, or sipping espresso at a quaint sidewalk café, Paris exudes sophistication and romance at every turn. With a rich history, vibrant culture, and gourmet food scene, it’s a destination that captures hearts.",
        popularAttractions: ["Eiffel Tower", "Louvre Museum", "Notre-Dame Cathedral"]
    ),
    Place(
        placeName: "Kyoto, Japan",
        touristNote: "A city where tradition meets beauty.",
        imageName: "kyoto",
        description: "Kyoto is the cultural heart of Japan, where centuries-old traditions are beautifully preserved. Once the imperial capital, the city is filled with stunning shrines, peaceful gardens, and picturesque streets lined with wooden machiya houses. Visitors can wander through the iconic torii gates at Fushimi Inari Shrine, experience the serenity of Zen temples, and witness geishas gracefully moving through Gion. Kyoto is especially enchanting during cherry blossom season and autumn foliage.",
        popularAttractions: ["Fushimi Inari Shrine", "Kinkaku-ji", "Arashiyama Bamboo Grove"]
    ),
    Place(
        placeName: "New York City, USA",
        touristNote: "The city that never sleeps.",
        imageName: "newyork",
        description: "New York City is a bustling metropolis brimming with energy, culture, and endless possibilities. From the bright lights of Times Square to the tranquility of Central Park, the city offers a dynamic mix of experiences. Art lovers can explore world-class museums like the MET and MoMA, while foodies indulge in a diverse culinary scene spanning every cuisine imaginable. With iconic landmarks like the Statue of Liberty and Empire State Building, NYC is a cultural capital and a dream for explorers.",
        popularAttractions: ["Statue of Liberty", "Central Park", "Times Square"]
    ),
    Place(
        placeName: "Rome, Italy",
        touristNote: "Walk through history in every street.",
        imageName: "rome",
        description: "Rome is a living museum where ancient ruins blend seamlessly with vibrant modern life. Known as the Eternal City, Rome boasts a rich tapestry of history, art, and culture. Visitors can marvel at the grandeur of the Colosseum, toss a coin into the Trevi Fountain for good luck, and stroll through cobblestone streets that have witnessed thousands of years of history. With mouthwatering Italian cuisine and charming piazzas, Rome offers an unforgettable experience around every corner.",
        popularAttractions: ["Colosseum", "Trevi Fountain", "Vatican City"]
    ),
    Place(
        placeName: "Cape Town, South Africa",
        touristNote: "Where nature and culture meet.",
        imageName: "capetown",
        description: "Cape Town is a strikingly beautiful city set between rugged mountains and the Atlantic Ocean. With Table Mountain towering above and pristine beaches stretching along the coast, it’s a paradise for nature lovers. The city is also rich in history and culture, from the poignant stories of Robben Island to the colorful houses of Bo-Kaap. Adventure seekers, foodies, and culture enthusiasts alike will find endless things to do in this vibrant and welcoming destination.",
        popularAttractions: ["Table Mountain", "Robben Island", "V&A Waterfront"]
    ),
    Place(
        placeName: "Rio de Janeiro, Brazil",
        touristNote: "Vibrant, scenic, and full of rhythm.",
        imageName: "rio",
        description: "Rio de Janeiro is a city bursting with energy, rhythm, and natural beauty. Nestled between lush mountains and golden beaches, Rio is famous for its infectious spirit and world-renowned Carnival. The towering Christ the Redeemer statue watches over the city from atop Corcovado, while locals and visitors alike soak in the sun at Copacabana and Ipanema. With samba music filling the streets and breathtaking views around every bend, Rio is an unforgettable South American gem.",
        popularAttractions: ["Christ the Redeemer", "Copacabana Beach", "Sugarloaf Mountain"]
    ),
    Place(
        placeName: "Sydney, Australia",
        touristNote: "Harbor city with iconic views.",
        imageName: "sydney",
        description: "Sydney is a dazzling harbor city that combines modern sophistication with natural beauty. It's home to architectural icons like the Sydney Opera House and Harbour Bridge, as well as pristine beaches like Bondi and Manly. The city offers a laid-back lifestyle with a dynamic arts scene, fresh seafood, and stunning coastal walks. Whether you're sailing across the harbor, exploring local markets, or watching a show at the Opera House, Sydney is a captivating destination down under.",
        popularAttractions: ["Sydney Opera House", "Bondi Beach", "Harbour Bridge"]
    )
]
