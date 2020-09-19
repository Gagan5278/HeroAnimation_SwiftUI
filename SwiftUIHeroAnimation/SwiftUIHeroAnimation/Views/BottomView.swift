//
//  BottomView.swift
//  SwiftUIHeroAnimation
//
//  Created by Gagan  Vishal on 9/18/20.
//

import SwiftUI

struct BottomView: View {
    
    @State var index = 1

    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            Text("People")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("txt"))
            
            Text("Member Of Your Group")
                .font(.caption)
            
            HStack(spacing: 15){
                
                ForEach(1...6,id: \.self){i in
                    
                    Button(action: {index = i}) {
                        
                        Text("\(i)")
                            .fontWeight(.bold)
                            .foregroundColor(index == i ? .white : .gray)
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Color.cusomtColor.opacity(index == i ? 1 : 0.07))
                            .cornerRadius(4)
                    }
                }
                
                Spacer(minLength: 0)
            }
            .padding(.top)
            Text("Description")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.cusomtColor)
                .padding(.top,10)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
                .multilineTextAlignment(.leading)
            
            Spacer(minLength: 0)
            
            HStack{
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    
                    Text("Book Now")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(Color.cusomtColor)
                        .clipShape(Capsule())
                }
                
                Spacer(minLength: 0)
            }
            .padding(.top)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        }
        .padding([.horizontal,.top])
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
