//
//  ContentView.swift
//  Follow
//
//  Created by Rafael Gonzaga on 04/11/23.
//

import SwiftUI


//MARK: - VIEW
struct ProfileView: View {
    
    @EnvironmentObject var viewModel: ProfileViewModel
    var body: some View {
        VStack {
            ProfileDataView()
            ActionView( )
        }
        .animation(.easeOut, value: viewModel.isFollowing)
    }
}
    #Preview {
        ProfileView()
            .environmentObject(ProfileViewModel())
        
    }

struct ProfileDataView: View {
  @EnvironmentObject var viewModel: ProfileViewModel
    
    var body: some View {
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
        
        Text("\(viewModel.userFollowers)")
            .font(.system(size: 60, weight: .light))
            .padding(viewModel.isFollowing ? 40: 25)
    }
  
    }
    


struct ActionView: View {
@EnvironmentObject var viewModel: ProfileViewModel
 
    var body: some View {
        VStack{
            ///Seguir
            Button { viewModel.followToogle()} label: {
                Label (!viewModel.isFollowing ? "follow": "unfollow", systemImage: !viewModel.isFollowing ? "person.fill.badge.plus" : "person.fill.badge.minus" )
                    .frame(maxWidth: .infinity)
            }
            .tint(!viewModel.isFollowing ? .blue : .black)
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
