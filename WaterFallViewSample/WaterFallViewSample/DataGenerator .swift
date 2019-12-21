//
//  DataGenerator .swift
//  WaterFallView
//
//  Created by ZZJ on 2019/12/20.
//  Copyright © 2019 Peking University. All rights reserved.
//

import Foundation

class DataGenerator {
    private init() {}
    
    static var shared = DataGenerator()
    
    func genCardData(count: Int = 20) -> [Card] {
        (0..<count).map { _ in
            let index = (0..<titles.count).randomElement()!
            return Card(image: titles[index], title: titles[index], place: places[index], description: descriptions[index])
        }
    }
    
    private var titles = [
        "Whitehaven Beach",
        "Havasu Falls",
        "Cappadocia",
        "Salar de Uyuni",
        "Mu Chang Chai",
        "Lavender fields",
        "Machu Picchu",
        "Oia"
    ]
    
    private var places = [
        "Australia",
        "Grand Canyon National Park",
        "Turkey",
        "Daniel Campos, Bolivia",
        "Vietnam",
        "Provence, France",
        "Peru",
        "Santorini, Greece"
    ]
    
    private var descriptions = [
        "This 7km long, shockingly white sandy beach with piercing turquoise waters can be found along the Whitsunday Island in Australia. Accessible only by boat, sea plane or helicopter, this beach was ranked the Top Eco Friendly Beach in the world by CNN.",
        "The Havasu Falls is a beautiful waterfall with a natural blue lagoon at the bottom that you can swim in. The falls can be found in the Grand Canyon in Arizona and is set within Havasupai tribal lands. The tallest drop of the waterfalls is 30m.",
        "Cappadocia, located in central Antolia, is Turkey’s most visually striking area. Due to natural erosion, ‘fairy chimneys,’ as they are known locally, or cone-shaped rocks, have formed in clusters on the mountains making the landscape very unique indeed. In this area you will also find Bronze age homes carved into the walls of the mountains and rock faced churches. As you can see from the picture, taking a hot air balloon is very popular in this area and one of the best way to view the entire landscape.",
        "The largest salt flat in the world is in the Andes in south west Bolivia. The prehistoric, now dry lake is close to 11,000 square kilometres in size and a striking bright white. Due to its size and its flatness, the surface area turns into a natural mirror. It is even used for calibrating satellites!",
        "Each year between mid-September and mid-October (although still pretty throughout the rest of the year), tourists flock to Mu Chang Chai for a glimpse of the stunningly beautiful rice terraces. This mountainous landscape also includes a picturesque town within the sprawling, green terraces. An alternative location to also visit with similar views is Sapa, a lesser known area that would be sure to have fewer crowds.",
        "Every mid-June to mid-August, these bright purple lavender fields in Province, France come out to bloom. If you want to miss the crowds, head for the fields before mid-July. In this area you can also visit the lavender distilleries and learn about their heritage and techniques.",
        "You are likely to have seen this landscape in photos before, and that is for good reason! Machu Picchu is an ancient citadel set 2,430m above sea level in the Andes mountains in Peru. The city dates back to the 15th Century and it was later abandoned. Its exact use is still unknown today. To visit the ruins you can book yourself on a hike on the Inca Trail or you can take a bus from the town of Aguas Calientes.",
        "One of the most picturesque islands in the world, just look at Instagram. It is the town of Oia that you would have seen in these photos, which is located on the inside of the curved of the island, at the top. The traditional white washed walls of the buildings with blue roofs and windows, and the positioning of the buildings up the steep hill makes this area so beautiful to photograph. Once the sun starts to set, the warm glows of orange and pink start to reflect off the walls. Our list could have easily been 20, 30 or more beautiful locations in the world to visit. Where is next on your list?"
    ]
    
    
}
