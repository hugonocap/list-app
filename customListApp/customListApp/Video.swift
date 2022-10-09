//
//  Video.swift
//  customListApp
//
//  Created by Hugo on 9.10.22.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadData: String
    let url: URL
}

struct VideoList {
    static let topTen = [
        // First video
        Video(imageName: "sanFrancisco",
              title: "San Francisco",
              description: "San Francisco is a cultural, commercial, and financial center in the U.S. state of California. Located in Northern California, San Francisco is the 17th most populous city in the United States, and the fourth most populous in California, with 873,965 residents as of 2020. It covers an area of about 46.9 square miles (121 square kilometers), mostly at the north end of the San Francisco Peninsula in the San Francisco Bay Area, making it the second most densely populated large U.S. city, and the fifth most densely populated U.S. county, behind only four of the five New York City boroughs. San Francisco is the 12th-largest metropolitan statistical area in the United States with 4.7 million residents, and the fourth-largest by economic output, with a GDP of $592 billion in 2019. With San Jose, California, it forms the San Jose–San Francisco–Oakland, CA Combined Statistical Area, the fifth most populous combined statistical area in the United States, with 9.6 million residents as of 2019. Colloquial nicknames for San Francisco include SF, San Fran, The City, and Frisco.",
              viewCount: 1_341_457,
              uploadData: "Oct 26, 2021",
              url: URL(string: "https://www.youtube.com/watch?v=Uw2d52XQ1L8&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=2")!),
        // Second video
        Video(imageName: "beverlyHills",
              title: "Beverly Hills, LA",
              description: "California sunsets.  The best.  Taking the 2021 Ferrari F8 Spider on a sunset drive in Los Angeles California USA. From Beverly Hills to the Hollywood Hills via Sunset Boulevard.  Getting ready to board a plane.  New videos.  New locations.  Love you all. Peace.",
              viewCount: 2_176_845,
              uploadData: "Sep 21, 2021",
              url: URL(string: "https://www.youtube.com/watch?v=eR5vsN1Lq4E&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=1")!),
        // Third video
        Video(imageName: "newYork",
              title: "New York City",
              description: "intuited on one of the world's largest natural harbors, New York City consists of five boroughs, each of which is a separate county of the State of New York. The five boroughs –Brooklyn, Queens, Manhattan, The Bronx, and Staten Island – were consolidated into a single city in 1898. The city and its metropolitan area constitute the premier gateway for legal immigration to the United States. As many as 800 languages are spoken in New York, making it the most linguistically diverse city in the world. New York City is home to more than 3.2 million residents born outside the United States, the largest foreign-born population of any city in the world. In 2013, the tri-state New York Metropolitan Statistical Area (MSA) produced a gross metropolitan product (GMP) of nearly US$1.4 trillion. If greater New York City were a sovereign state, it would have the 12th highest GDP in the world.",
              viewCount: 8_485_414,
              uploadData: "Mar 25, 2018",
              url: URL(string: "https://www.youtube.com/watch?v=7HaJArMDKgI&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=4")!),
        // Fourth video
        Video(imageName: "hollywood",
              title: "Hollywood, LA",
              description: "The sign was originally created in 1923 as an advertisement for a local real estate development, but due to increasing recognition, the sign was left up. The sign has been a frequent target of pranks and vandalism across the decades, but it has since undergone restoration, including the installation of a security system to deter vandalism. The sign is protected and promoted by The Hollywood Sign Trust, a nonprofit organisation, while its site and the surrounding land are part of Griffith Park.",
              viewCount: 1_499_329,
              uploadData: "Jul 29, 2018",
              url:  URL(string: "https://www.youtube.com/watch?v=S-KdqA_6DII&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=6")!),
        // Fifth video
        Video(imageName: "losAngeles",
              title: "Los Angeles",
              description: "Home to the world’s 3rd largest economic area, after Tokyo and New York ($866 Billion in 2015), Los Angeles is the second-most populous city in the United States after New York City. With 4 Million residents and almost 19 Million in the surrounding area, Los Angeles is the largest and most populous city in the state of California and the cultural, financial, and commercial center of Southern California.",
              viewCount: 4_994_187,
              uploadData: "Jun 23, 2018",
              url: URL(string: "https://www.youtube.com/watch?v=Cw0d-nqSNE8&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=8")!),
        // Sixth video
        Video(imageName: "lasVegas",
              title: "Las Vegas",
              description: "Las Vegas, The Entertainment Capital of the World, and is famous for its mega casino-hotels and associated activities. It is a top three destination in the United States for business conventions and a global leader in the hospitality industry, claiming more AAA Five Diamond hotels than any other city in the world. Today, Las Vegas annually ranks as one of the world's most visited tourist destinations. The city's tolerance for numerous forms of entertainment has made Las Vegas a popular setting for literature, films, television programs, and music videos.",
              viewCount: 979_695,
              uploadData: "Oct 6, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=HZaLvgP-R8E&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=10")!),
        // Seventh video
        Video(imageName: "dallas",
              title: "Dallas, TX",
              description: "Dallas and nearby Fort Worth were initially developed due to the construction of major railroad lines through the area allowing access to cotton, cattle and later oil in North and East Texas. The construction of the Interstate Highway System reinforced Dallas's prominence as a transportation hub, with four major interstate highways converging in the city and a fifth interstate loop around it. Dallas then developed as a strong industrial and financial center and a major inland port, due to the convergence of major railroad lines, interstate highways and the construction of Dallas/Fort Worth International Airport, one of the largest and busiest airports in the world.",
              viewCount: 555_261,
              uploadData: "May 9, 2019",
              url: URL(string: "https://www.youtube.com/watch?v=mjUWMr8HtYY&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=5")!),
        // Eighth video
        Video(imageName: "archesUtah",
              title: "Arches National Park, Utah",
              description: "Arches National Park is a national park in eastern Utah, United States. The park is adjacent to the Colorado River, 4 miles (6 km) north of Moab, Utah. More than 2,000 natural sandstone arches are located in the park, including the well-known Delicate Arch, as well as a variety of unique geological resources and formations. The park contains the highest density of natural arches in the world.",
              viewCount: 747_004,
              uploadData: "Sep 23, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=l-xaEoKGIxY&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=7")!),
        // Ninth video
        Video(imageName: "miami",
              title: "Miami, FL",
              description: "Miami is a major center and leader in finance, commerce, culture, arts, and international trade. The metro area is by far the largest urban economy in Florida and the 12th largest in the United States, with a GDP of $344.9 billion as of 2017. In 2018, Miami was classified as an Alpha level global city by the GaWC. In 2019, Miami ranked seventh in the United States and 31st among global cities in terms of business activity, human capital, information exchange, cultural experience, and political engagement. According to a 2018 UBS study of 77 world cities, the city was ranked as the third-richest in the United States and the eighth-richest in the world in terms of purchasing power. Miami is nicknamed the \"Capital of Latin America\" and is the largest city with a Cuban-American plurality.",
              viewCount: 3_391_471,
              uploadData: "Aug 22, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=Cod_ggrs69U&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=3")!),
        // Tenth video
        Video(imageName: "bryceCanyonUtah",
              title: "Bryce Canyon National Park, UT",
              description: "Bryce Canyon National Park is an American national park located in southwestern Utah. The major feature of the park is Bryce Canyon, which despite its name, is not a canyon, but a collection of giant natural amphitheaters along the eastern side of the Paunsaugunt Plateau. Bryce is distinctive due to geological structures called hoodoos, formed by frost weathering and stream erosion of the river and lake bed sedimentary rocks. The red, orange, and white colors of the rocks provide spectacular views for park visitors. Bryce Canyon National Park is much smaller, and sits at a much higher elevation than nearby Zion National Park. The rim at Bryce varies from 8,000 to 9,000 feet (2,400 to 2,700 m).",
              viewCount: 55_820,
              uploadData: "Oct 2, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=xsW00gX-KMs&list=PLoLSFe8Y3cL2TUUlnEnetied-DeYy3VZa&index=9")!),
    ]
}
