//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Ephesus",
            cityName: "İzmir",
            coordinates: CLLocationCoordinate2D(latitude: 37.9390, longitude: 27.3425),
            description: "Ephesus was an ancient Greek city located in present-day İzmir, Turkey. It was one of the largest and most important cities of the Roman Empire. Today, the well-preserved ruins of Ephesus attract tourists who come to see its grand theater, Library of Celsus, and the Temple of Artemis, one of the Seven Wonders of the Ancient World.",
            imageNames: [
                "izmir-ephesus-1",
                "izmir-ephesus-2",
                "izmir-ephesus-3",
            ],
            link: "https://en.wikipedia.org/wiki/Ephesus"
        ),
        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            name: "Taj Mahal",
            cityName: "Agra",
            coordinates: CLLocationCoordinate2D(latitude: 27.1750, longitude: 78.0422),
            description: "The Taj Mahal is an ivory-white marble mausoleum on the right bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his favorite wife, Mumtaz Mahal.",
            imageNames: [
                "agra-tajmahal-1",
                "agra-tajmahal-2",
                "agra-tajmahal-3",
            ],
            link: "https://en.wikipedia.org/wiki/Taj_Mahal"
        ),
        Location(
            name: "Great Wall of China",
            cityName: "Beijing",
            coordinates: CLLocationCoordinate2D(latitude: 40.4319, longitude: 116.5704),
            description: "The Great Wall of China is a series of fortifications made of stone, brick, tamped earth, wood, and other materials, generally built along an east-to-west line across the historical northern borders of China. It is one of the most famous and impressive architectural feats in the world.",
            imageNames: [
                "beijing-greatwall-1",
                "beijing-greatwall-2",
                "beijing-greatwall-3",
            ],
            link: "https://en.wikipedia.org/wiki/Great_Wall_of_China"
        ),
        Location(
            name: "Statue of Liberty",
            cityName: "New York City",
            coordinates: CLLocationCoordinate2D(latitude: 40.6892, longitude: -74.0445),
            description: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor. It was a gift from France to the United States and is a symbol of freedom and democracy. The statue represents Libertas, the Roman goddess of freedom.",
            imageNames: [
                "nyc-statueofliberty-1",
                "nyc-statueofliberty-2",
            ],
            link: "https://en.wikipedia.org/wiki/Statue_of_Liberty"
        ),
        Location(
            name: "Machu Picchu",
            cityName: "Cusco",
            coordinates: CLLocationCoordinate2D(latitude: -13.1631, longitude: -72.5450),
            description: "Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru. It is renowned for its stunning mountain views and well-preserved ruins. This UNESCO World Heritage site is considered one of the most iconic archaeological sites in the world.",
            imageNames: [
                "cusco-machupicchu-1",
                "cusco-machupicchu-2",
                "cusco-machupicchu-3",
            ],
            link: "https://en.wikipedia.org/wiki/Machu_Picchu"
        ),
        
        Location(
            name: "Pamukkale",
            cityName: "Denizli",
            coordinates: CLLocationCoordinate2D(latitude: 37.9204, longitude: 29.1212),
            description: "Pamukkale, meaning 'cotton castle' in Turkish, is a natural site in Denizli, Turkey. It is famous for its terraces of white mineral-rich travertine terraces formed by thermal waters. The area also includes the ancient city of Hierapolis, with well-preserved ruins and a large necropolis.",
            imageNames: [
                "denizli-pamukkale-1",
                "denizli-pamukkale-2",
                "denizli-pamukkale-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pamukkale"
        ),
        Location(
            name: "Cappadocia",
            cityName: "Nevşehir",
            coordinates: CLLocationCoordinate2D(latitude: 38.6431, longitude: 34.8283),
            description: "Cappadocia is a region in central Turkey known for its unique landscapes, rock formations, and cave dwellings. It is a popular tourist destination offering hot air balloon rides, ancient underground cities, and stunning views of fairy chimneys.",
            imageNames: [
                "nevsehir-cappadocia-1",
                "nevsehir-cappadocia-2",
                "nevsehir-cappadocia-3",
            ],
            link: "https://en.wikipedia.org/wiki/Cappadocia"
        ),
        Location(
            name: "Hagia Sophia",
            cityName: "Istanbul",
            coordinates: CLLocationCoordinate2D(latitude: 41.0086, longitude: 28.9802),
            description: "Hagia Sophia is a former Byzantine church and Ottoman mosque in Istanbul, Turkey. It is now a museum and one of the greatest surviving examples of Byzantine architecture. The building is renowned for its massive dome, intricate mosaics, and historical significance.",
            imageNames: [
                "istanbul-hagiasophia-1",
                "istanbul-hagiasophia-2",
                "istanbul-hagiasophia-3",
            ],
            link: "https://en.wikipedia.org/wiki/Hagia_Sophia"
        )
    ]
}
