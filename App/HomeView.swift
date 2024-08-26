import SwiftUI

struct HomeView: View {
    var allQuotes = [
        "You know, hope is a mistake. If you can't fix what's broken… you'll go insane.",
        "コノママジャダメ"
    ]
    
    @State private var quote = ""

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
        }
        .onAppear {
            quote = allQuotes.randomElement() ?? "Read more books."
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


