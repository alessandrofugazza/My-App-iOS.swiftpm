import SwiftUI

struct JournalView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Group {
                    Text("2 A.M.")
                        .font(.largeTitle)
                    Text("Monday, August 26, 2024")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Divider()
                }
                Group {
                    Group {
                        Text("2AM. Woke up 2 hours ago. Nightmares won't stop. Panic attacks won't stop.")
                            .padding(.vertical)
                        Text("Just adding this entry to test this view. I like the aesthetic effect of it. Hardcoding this stuff makes me sick though. Luckily it's temporary. I miss autocorrect already.")
                            .padding(.bottom)
                        Text("The date at the top is a nice touch don't you think?")
                            .padding(.bottom)
                        Text("My mistake was not having a humble approach to life. Can't undo the past though. And it's too late to change.")
                            .padding(.bottom)
                    }
                    Group {
                        HStack {
                            Text("In my life, I feel most grateful for … what? Unfortunate timing for this line. ")
                            Image("WhatAmIDoingWithMyLife")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                        }
                        .padding(.bottom)
                    }
                    Group {
                        Text("Boy do I love the term self-deprecation. I like the sound of the word.")
                            .padding(.bottom)
                        Text("I must wonder what loving yourself feels like.")
                            .padding(.bottom)
                    }
                    Group {
                        Divider()
                        Text("Fun fact")
                            .font(.title3)
                            .foregroundColor(.cyan)
                        Text("I never had a purpose in life.")
                            .italic()
                        Divider()
                    }
                    Group {
                        Text("This View took a dark turn real fast lol. No worries friend. It's just a joke. A half-joke. A bad one at that.")
                            .padding(.vertical)
                    }
                    Group {
                        Group {
                            Text("I know I should take my life more seriously. I just make trouble for everyone. But I just can't bring myself to care. You all say life is a journey. Life is an experience. And I guess it is. But when I frame it this way things lose meaning for me.")
                                .padding(.bottom)
                            Group {
                                Divider()
                                Text("Fun fact")
                                    .font(.title3)
                                    .foregroundColor(.cyan)
                                Text("Existential isolation is worse than death.")
                                    .italic()
                                Divider()
                            }
                            Group {
                                Text("You know, hope is a mistake. If you can't fix what's broken… you'll go insane.")
                                    .italic()
                                    .padding()
                                    .background(Color.gray.opacity(0.3))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(.vertical)
                                    .frame(maxWidth: .infinity)
                            }
                        }
                    }
                    
                }

            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
        }
        .background(Color.purple
            .opacity(0.5)
            .saturation(0.7)
        )
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
