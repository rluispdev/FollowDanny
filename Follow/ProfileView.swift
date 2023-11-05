//
//  ContentView.swift
//  Follow
//
//  Created by Rafael Gonzaga on 04/11/23.
//

import SwiftUI
//MARK: -  MODEL
struct User {
    
    var picture: String
    var name: String
    var nick: String
    var followers: Double
    
}
//MARK: - VIEW
struct ProfileView: View {
    
 var user = User(picture: "danny", name: "Danny Phantom", nick: "@dannyphantom", followers: 22_643)
    
    var body: some View {
        VStack {
            ///Perfil
            Image(user.picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .padding(.bottom, 50)
                
            Text(user.name)
                .font(.system(size: 40, weight: .bold))
            
            Text(user.nick)
                .font(.system(size:23, weight: .regular))
                .foregroundStyle(.gray)
            
            Text("\(user.followers)")
                .font(.system(size: 60, weight: .light))
                .padding(40)
        }
        .padding()
        
        VStack {
            ///Seguir
            Button {} label: {
                Label ("follow", systemImage: "person.fill.badge.plus" )
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            ///Enviar mensagem
            Button {} label: {
                Label ("enviar mensagem", systemImage: "paperplane.fill" )
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .disabled(true)
        }
        .padding(20)
    }
}

#Preview {
    ProfileView()
}
