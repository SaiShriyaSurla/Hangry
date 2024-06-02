import SwiftUI

struct RecipeView: View {
    var recipe: Recipe // Passing it as prop
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 20) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    //.multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                VStack(alignment: .leading, spacing: 20) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                            .padding(.horizontal, 40)
                    }
                    
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Ingredients")
                                .font(.headline)
                                .bold()
                                .padding(.horizontal, 40)
                            
                            Text(recipe.ingredients)
                                .padding(.horizontal, 40)
                        }
                    }
                    
                    if !recipe.directons.isEmpty {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Directions")
                                .font(.headline)
                                .bold()
                                .padding(.horizontal, 40)
                            
                            Text(recipe.directons)
                                .padding(.horizontal, 40)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            }
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
