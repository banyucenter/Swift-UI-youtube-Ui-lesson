//
//  ContentView.swift
//  NavigationCustom
//
//  Created by Ipung Dev Center on 20/06/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                //Tabs 1
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                }
                
                //Tabs 2
                Explore()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Eksplorasi")
                }
                
                //Tabs 3
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                }
                
                //Tabs 4
                Explore()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                }
                
                //Tabs 5
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                }
                
            }
                //active color tabs
                .accentColor(.red)
        }
        //mode light
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home: View {
    @State var showingAbout = false
    
    var body: some View {
        
        NavigationView {
            //Kontent List Video
            VideoView()
                .navigationBarItems(
                    //posisi navigation kanan
                    leading:
                    HStack{
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image("youtube")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:90, height:20)
                        }
                        
                    },
                    //posisi navigation kiri
                    trailing:
                    HStack(spacing:30){
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                            
                        }
                        
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                            
                        }
                        
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                            
                        }
                        
                        //Button with modal
                        Button(action: {
                            self.showingAbout.toggle()
                        }) {
                            Image("profile")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:20, height:20)
                                .clipShape(Circle())
                        }.sheet(isPresented: $showingAbout) {
                            About()
                        }
                    }
                    
                    
            )
                //inline mode
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct Explore: View {
    var body: some View {
        
        NavigationView {
            VideoView()
                .navigationBarItems(
                    //posisi kanan navigation
                    leading:
                    HStack{
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image("youtube")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:90, height:20)
                        }
                        
                    },
                    //posisi kiri navigation
                    trailing:
                    HStack(spacing:30){
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {
                            print("Edit button pressed...")
                        }) {
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


//Konten Viewo
struct VideoView : View {
    var body : some View {
        List{
            VStack(alignment: .leading){
                ZStack(alignment: .bottomTrailing){
                    Image("content")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom,5)
                }
                
                HStack(spacing:20){
                    Image("profile")
                        .resizable()
                        .frame(width:30,height:30)
                        .clipShape(Circle())
                    
                    VStack(alignment:.leading){
                        Text("Tutorial Swift UI #1").font(.headline)
                        HStack{
                            Text("Ipung Dev Channel - 300x ditonton - 9 Jam yang lalu").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            VStack(alignment: .leading){
                ZStack(alignment: .bottomTrailing){
                    Image("blockchain")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("15:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom,5)
                }
                
                HStack(spacing:20){
                    Image("profile")
                        .resizable()
                        .frame(width:30,height:30)
                        .clipShape(Circle())
                    
                    VStack(alignment:.leading){
                        Text("Tutorial Blockchain").font(.headline)
                        HStack{
                            Text("Ipung Dev Channel - 300x ditonton - 9 Jam yang lalu").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            VStack(alignment: .leading){
                ZStack(alignment: .bottomTrailing){
                    Image("searchbar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    Text("10:00")
                        .padding(.all,5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing,5)
                        .padding(.bottom,5)
                }
                
                HStack(spacing:20){
                    Image("profile")
                        .resizable()
                        .frame(width:30,height:30)
                        .clipShape(Circle())
                    
                    VStack(alignment:.leading){
                        Text("Tutorial iOS Swift UI #3").font(.headline)
                        HStack{
                            Text("Ipung Dev Channel - 300x ditonton - 9 Jam yang lalu banget").font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
        }
    }
}

struct About: View {
    @Environment(\.presentationMode) private var presentationMode
    
    var body :some View {
        
            ZStack(alignment:.topLeading){
                
                
                
                Image("content")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                Text("About")
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Dismiss")
                }
            
        }
        
    }
}
