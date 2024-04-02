//
//  ContentView.swift
//  Takeaway
//
//  Created by Zaafir on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: VistaPedido(categoriaActual: .mediterranea)){
                    VistaTipoComida(nombreImagen: "mediterranea", nombreComida: "MEDITERRANEA")
                }
                NavigationLink(destination: VistaPedido(categoriaActual: .arabe)){
                    VistaTipoComida(nombreImagen: "arabe", nombreComida: "ARABE")
                }
                NavigationLink(destination: VistaPedido(categoriaActual: .mediterranea)){
                    VistaTipoComida(nombreImagen: "asiatica", nombreComida: "ASIATICA")
                }
                NavigationLink(destination: VistaPedido(categoriaActual: .mediterranea)){
                    VistaTipoComida(nombreImagen: "hindu", nombreComida: "HINDU")
                }
                /*Text("Comida Mediterranea")
                Text("Comida Arabe")
                Text("Comida Asiatica")
                Text("Comida Hindu")*/
                	
            }
            .navigationTitle("Haga su pedido")
        }
    }
}
struct VistaTipoComida : View{
    
    var nombreImagen : String
    var nombreComida : String
    
    var body : some View{
        
        HStack{
            Spacer()
        ZStack{
            
            Image(nombreImagen)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 100)
                .clipped()
                .cornerRadius(20.0)
            Text(nombreComida)
                .font(.custom("Helvetica-Medium", size: 34))
                .bold()
                .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(.top,5)
        .padding(.bottom,5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
