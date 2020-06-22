//
//  ContentView.swift
//  YTapp
//
//  Created by Ipung Dev Center on 21/06/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                }
                
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explorasi")
                }
                
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                }
                
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                }
                
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                }
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body : some View {
        NavigationView{
            Kontent()
                .navigationBarItems(
                    leading:
                    HStack{
                        Button(action: {print("Hello Button")}){
                            Image("youtube")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:90, height:20)
                        }
                    },
                    trailing:
                    HStack(spacing:30){
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Print")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Print")}){
                            Image("profile")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:20, height:20)
                                .clipShape(Circle())
                        }
                    }
            )
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Kontent : View {
    //Property Data
    
    var body : some View {
        List{
            cellKontent(imageKontent: "content", profilKontent: "profile", judul: "Tutorial SwiftUI #1", deskripsi: "Ini adalah deskripsi vide - 300x ditonton - 1 Jam yang lalu", durasi: "10:00")
            cellKontent(imageKontent: "blockchain", profilKontent: "profile", judul: "Tutorial SwiftUI #2", deskripsi: "Ini adalah deskripsi vide - 300x ditonton - 1 Jam yang lalu", durasi: "10:00")
            cellKontent(imageKontent: "content", profilKontent: "profile", judul: "Tutorial SwiftUI #3", deskripsi: "Ini adalah deskripsi vide - 300x ditonton - 1 Jam yang lalu", durasi: "10:00")
        }
    }
}

//Buat kerangka
struct cellKontent : View {
    var imageKontent: String
    var profilKontent: String
    var judul: String
    var deskripsi: String
    var durasi: String
    
    var body : some View {
        //kontent framework
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(durasi)
                    .padding(.all, 5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing:20){
                Image(profilKontent)
                    .resizable()
                    .frame(width:30, height:30)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(judul).font(.headline)
                    HStack{
                        Text(deskripsi).font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
        
        
    }
}





