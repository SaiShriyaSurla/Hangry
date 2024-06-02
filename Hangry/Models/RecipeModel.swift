//
//  RecipeModel.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 02/06/2024.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case salads = "Salads"
    case appetizers = "Appetizers"
    case snacks = "Snacks"
    case sides = "Sides"
    case mains = "Mains"
    case deserts = "Deserts"
    case drinks = "Drinks"
    
    
}

struct Recipe: Identifiable {
    let id = UUID() //random string identifier
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directons: String
    let category: Category.RawValue //reading the string and not the case itself
    let datePublished: String
    let url: String
}

extension Recipe{
    static let all: [Recipe] = [
        
        Recipe(
            name: "Aloo Gobi",
            image: "https://www.foodandwine.com/thmb/cMZecoM65AevIDFL4BC9bn0ZNGQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Aloo-Gobi-FT-RECIPE0623-d0555d951f26447cb2f2d99e00ccc660.jpg",
            description: "Aloo Gobi is a dry Indian dish made with potatoes (Aloo) and cauliflower (Gobi). It’s a simple yet flavorful dish that pairs well with roti or rice.",
            ingredients: "3 medium potatoes (peeled and cubed)\n1 medium cauliflower (cut into florets)\n1 large onion (finely chopped)\n2 tomatoes (finely chopped)\n1 tbsp ginger-garlic paste\n2 green chilies (sliced)\n1 tsp cumin seeds\n1 tsp turmeric powder\n1 tsp coriander powder\n1 tsp red chili powder\n1 tsp garam masala\nSalt to taste\nCilantro for garnish\nOil for cooking",
            directons: "Heat oil in a pan and add cumin seeds. Once they splutter, add chopped onions and sauté until golden brown.\nAdd ginger-garlic paste and green chilies. Cook for a minute.\nAdd tomatoes and cook until the oil separates.\nAdd turmeric, coriander powder, red chili powder, and salt. Mix well.\nAdd potatoes and cauliflower. Mix well to coat the vegetables with the spices.\nCover and cook on low heat until the vegetables are tender.\nGarnish with garam masala and cilantro.\nServe hot with roti or rice.",
            category: "Sides",
            datePublished: "15-07-2018",
            url: "https://www.youtube.com/watch?v=F6fYdLBB2U0"
        ),


        
        Recipe(
            name:"Maggie",
               image:"https://lh3.googleusercontent.com/IobowV956XhCBa4i4DVDaWqQHbyTaA6_y9L8dpH5eixFdl4tOId9ZgkyTrBAVVuJ-kFIeMRjwih_7KCNAOsDWwOMeQ=w1000",
               description: "",
               ingredients: "maggie\nmasala packet\n1/2 chopped onion\nginger garlic paste\nwater\nnormal spices",
               directons: "To a pan, add a little oil\nOnce the oil is hot,add the copped onions and 1/2 a spoon of ginger garlic paste\nOnce the onions are carmelized/golden brown, add a cup of water\nNow add in the masala packet and chilli powder\nOnce the water starts slightly boiling, add the raw maggie and put a lid on\nAfter 90% of the water has been absorbed, switch the stove off\n\n Your maggie is now ready",
               category: "Mains",
               datePublished: "02-06-2024",
               url: ""
              ),
        Recipe(
            name: "Pav Bhaji",
               image:"https://upload.wikimedia.org/wikipedia/commons/4/4a/Bambayya_Pav_bhaji.jpg",
               description: "Learn How To Make Pav Bhaji Recipe, a delicious Mumbai street food with The Bombay Chef Varun Inamdar. Are you a foodie and in love with street food, then we are sure one of your favourite street food will be Pav Bhaji and that's the reason, The Bombay chef Varun Inamdar brings to your kitchen yummy, tasty and delicious Pav Bhaji.",
               ingredients: "500 gms roughly cut potatoes\n100 gms green peas\n500 gms chopped tomatoes\nSalt to taste\n\nFor masala\n200 gms butter\n200 gms finely chopped onions\n1/2 tsp jeera\n4 tbsp chilli powder\n1 tbsp garlic paste\n1 medium chopped capsicum\n1/2 tsp haldi\n1 tbsp garam masala\nSalt to taste\nRed edible colour (optional)\nWater as required\n\nFor assembly\nLemons wedges\nChopped onions\nButter\nChopped Coriander",
               directons: " In a pan add potatoes, peas, tomatoes water and and let it simmer for 15-20 minutes\nMash the whole mixture properly and add little bit of water\nIn a pan add butter, onions, cumin seeds, garlic paste and chilli powder and mix it all well\nAdd capsicum, turmeric and garam masala\nAdd the mashed pulp into the pan and mix it nicely and evenly\nAdd food color – red ( Its optional)\nTo adjust the consistency add water and keep it on slow simmer\nApply butter on the pav and toast them on a pan\n\nPav Bhaji is ready to be served!",
               category: "Mains",
               datePublished: "25-03-2016",
               url: "https://www.youtube.com/watch?v=rSLiOqJ2egU"
              ),
        Recipe(
            name: "Chole Bhature",
            image: "https://media.vogue.in/wp-content/uploads/2020/08/chole-bhature-recipe.jpg",
            description: "Chole Bhature is a popular North Indian dish that combines spicy chickpeas (Chole) with fluffy deep-fried bread (Bhature). It’s a hearty and flavorful dish perfect for any meal.",
            ingredients: "2 cups chickpeas (soaked overnight)\n2 large onions (finely chopped)\n2 tomatoes (pureed)\n1 tbsp ginger-garlic paste\n2 green chilies (finely chopped)\n1 tbsp chole masala\n1 tsp cumin seeds\n1 tsp turmeric powder\n1 tsp red chili powder\n1 tsp garam masala\nSalt to taste\n4 cups all-purpose flour\n1/2 cup yogurt\n1 tsp baking powder\n1/2 tsp baking soda\nWater as required\nOil for frying",
            directons: "Cook the soaked chickpeas in a pressure cooker until soft.\nIn a pan, heat oil and add cumin seeds. Once they splutter, add chopped onions and sauté until golden brown.\nAdd ginger-garlic paste and green chilies. Cook for a minute.\nAdd tomato puree and cook until the oil separates.\nAdd turmeric, red chili powder, chole masala, and salt. Cook for a minute.\nAdd cooked chickpeas and simmer for 20 minutes. Garnish with garam masala.\nFor Bhature, mix flour, yogurt, baking powder, and baking soda. Knead into a soft dough using water. Let it rest for 2 hours.\nDivide the dough into balls and roll them out.\nDeep fry the rolled dough in hot oil until golden brown.\nServe Chole with hot Bhature.",
            category: "Mains",
            datePublished: "10-04-2020",
            url: "https://www.youtube.com/watch?v=1g6nPYyIS_I"
        )
    
    
    ]
}
