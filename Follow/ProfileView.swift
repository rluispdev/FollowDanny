//
//  ContentView.swift
//  Follow
//
//  Created by Rafael Gonzaga on 04/11/23.
//

import SwiftUI


//MARK: - VIEW
struct ProfileView: View {
    
 @State var viewModel = ProfileViewModel()

    
    var body: some View {
        VStack {
            ///Perfil
            Image(viewModel.user.picture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .padding(.bottom, 50)
                
            Text(viewModel.user.name)
                .font(.system(size: 40, weight: .bold))
            
            Text(viewModel.user.nick)
                .font(.system(size:23, weight: .regular))
                .foregroundStyle(.gray)
            
            Text("\(viewModel.user.followers)")
                .font(.system(size: 60, weight: .light))
                .padding(40)
        }
        .padding()
        
        VStack {
            ///Seguir
            Button { viewModel.followToogle()} label: {
                Label ("follow", systemImage: "person.fill.badge.plus" )
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            ///Enviar mensagem
            Button { } label: {
                Label ("enviar mensagem", systemImage: "paperplane.fill" )
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .disabled(!viewModel.isFollowing)
        }
        .padding(20)
      
    }
       
}

#Preview {
    ProfileView()
}
