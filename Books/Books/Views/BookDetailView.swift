//
//  BookDetailView.swift
//  Books
//
//  Created by Matthew Andrea D'Alessio on 13/11/23.
//

import SwiftUI

struct BookDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode
    
    var book: Book
    
    var body: some View {
        
        NavigationStack {
            HStack {
                Spacer()
                
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.secondary)
                }
            }
            .padding(.top, 20)
            .padding(.trailing)
            
            ScrollView (showsIndicators: false) {
                VStack {
                    Image("\(book.cover)")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(5)
                        .frame(height: 390)
                        .padding(.bottom, 10)
                    
                    Text("\(book.title)")
                        .font(Font.custom("Georgia-Bold", size: 22))
                    
                    Button {
                        // No action
                    } label: {
                        HStack {
                            Text("\(book.author)")
                            
                            Image(systemName: "chevron.forward")
                                .imageScale(.small)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    HStack {
                        VStack (alignment: .leading) {
                            HStack (spacing: 2) {
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star")
                            }
                            .font(.system(size: 12))
                            .padding(.bottom, 2)
                            
                            Text("698 Ratings")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        HStack (spacing: 15) {
                            Button(action: {
                                // No action
                            }) {
                                Image(systemName: "app.gift.fill")
                                    .font(.system(size: 27))
                            }
                            
                            Button(action: {
                                // No action
                            }) {
                                Image(systemName: "ellipsis.circle.fill")
                                    .font(.system(size: 27))
                            }
                        }
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    
                    Button(action: {
                        // No action
                    }) {
                        Text("GET")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(13)
                            .frame(maxWidth: .infinity)
                            .background(colorScheme == .dark ? Color.white.opacity(0.2) : Color.black)
                            .cornerRadius(40)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Button(action: {
                            // No action
                        }) {
                            HStack {
                                Image(systemName: "plus.circle.fill")
                                    .padding(.leading)
                                
                                Text("WANT TO READ")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .padding(.vertical, 13)
                                    .padding(.trailing)
                            }
                            .frame(maxWidth: 180)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(colorScheme == .dark ? Color.white.opacity(0.2) : Color.black, lineWidth: 1)
                            )
                        }
                        
                        Button(action: {
                            // No action
                        }) {
                            HStack {
                                Image(systemName: "book.pages.fill")
                                    .padding(.leading)
                                
                                Text("SAMPLE")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .padding(.vertical, 13)
                                    .padding(.trailing)
                            }
                            .frame(maxWidth: 140)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(colorScheme == .dark ? Color.white.opacity(0.2) : Color.black, lineWidth: 1)
                            )
                        }
                    }
                    .padding(.top, 5)
                    .padding(.horizontal)
                    
                }
                .padding(.bottom, 20)
                
                Divider()
                    .frame(width: 360)
                
                HStack {
                    VStack (alignment: .leading) {
                        Text ("Publisher Description")
                            .font(Font.custom("Georgia-Bold", size: 18))
                            .padding(.bottom, 5)
                        
                        Text ("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eleifend ut odio eu faucibus. Fusce accumsan velit mi, efficitur volutpat purus rutrum a. Sed imperdiet mollis volutpat. In tristique dapibus augue, vel fringilla felis vulputate id. Maecenas maximus at nunc non vestibulum. Cras lobortis lorem eu lectus ultricies consectetur. Mauris malesuada posuere odio, sit amet aliquam dui convallis commodo. Quisque laoreet cursus varius. Nulla at enim metus. Vestibulum enim justo, fermentum scelerisque auctor et, vestibulum ut ante. In hac habitasse platea dictumst. Curabitur dictum metus sem, sed vulputate erat auctor imperdiet. Phasellus pulvinar justo leo, sit amet dignissim ex ultricies eu.")
                            .font(.subheadline)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top, 20)
                }
            }
        }
        .padding()
    }
}

#Preview {
    BookDetailView(book:
                    Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", cover: "elprincipito", categories: ["Top Charts"])
    )
}

