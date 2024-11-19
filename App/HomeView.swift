import SwiftUI

struct HomeView: View {
    var allQuotes = [
        "You know, hope is a mistake. If you can't fix what's broken… you'll go insane.",
        "コノママジャダメ",
        "The man who seeks excuses for his actions is doomed to fail.",
        "Their gross misconduct almost cost us our home, but has given us a renewed sense of purpose and tempered in the fires of adversity, our will is forged anew.",
        "Fear is born of uncertainty; we fear nothing because our purpose is clear and our path is certain.",
        "Were it so easy.",
        "Wir sind von vornherein unlogische und daher ungerechte Wesen, und können diess erkennen: diess ist eine der grössten und unauflösbarsten Disharmonien des Daseins.",
        "Dass der Andere leidet, ist zu lernen: und völlig kann es nie gelernt werden.",
        "Ohne Lust kein Leben; der Kampf um die Lust ist der Kampf um das Leben. Ob der Einzelne diesen Kampf so kämpft, dass die Menschen ihn gut, oder so, dass sie ihn böse nennen, darüber entscheidet das Maass und die Beschaffenheit seines Intellects.",
    ]
    
//    var shortTodos = [
//        "Sorting",
//        "eToro",
//        "Spotify",
//    ]
    
    @State private var quote = ""
//    @State private var shortTodo = ""

    var body: some View {
        VStack {
            Group {                
                Image("MachineLifeformHead")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(.black, style: StrokeStyle(lineWidth: 5))
                    )
                    .padding(.bottom)
            }
            Group {                
                Text("My App")
                    .font(.largeTitle)
                Text("v1.0.0")
                    .font(.caption)
                    .padding(.bottom)
            }
            Group {                
                Text("こんにちは")
                    .font(.title)
                Text("元気ですか")
            }
            Group {
//                TODO animation
                Button(action: {
//                    TODO handle case old quote equals new quote both here and onappear. BORING SHIT
                    quote = allQuotes.randomElement() ?? "Read more books."
                }) {
                    Text(quote)
                        .italic()
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
                .buttonStyle(PlainButtonStyle()) 
            }
//            Group {
//                Button(action: {
//                    shortTodo = shortTodos.randomElement() ?? "No more Short Todos."
//                }) {
//                    Text(shortTodo)
//                        .italic()
//                        .padding()
//                        .background(Color.gray.opacity(0.3))
//                        .clipShape(RoundedRectangle(cornerRadius: 10))
//                        .padding(.vertical)
//                        .frame(maxWidth: .infinity)
//                        .multilineTextAlignment(.center)
//                }
//                .buttonStyle(PlainButtonStyle()) 
//            }
        }
        .onAppear {
            quote = allQuotes.randomElement() ?? "Read more books."
//            shortTodo = shortTodos.randomElement() ?? "No more Short Todos."
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


