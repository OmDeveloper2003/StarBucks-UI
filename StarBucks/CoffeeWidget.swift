import SwiftUI

struct CoffeeWidget: View {
    var title: String
    var desc: String
    var price: String
    var img: String
    var color: Color
    var bg: String
    
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(color)
                .padding(.top)
            
            ZStack {
                Image(bg)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(20)
                    .overlay(Color.black.opacity(0.3).cornerRadius(20))
                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            showDetails.toggle()
                        }
                    }
                
                if showDetails {
                    VStack {
                        Text(title)
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                            .shadow(radius: 5)
                        
                        Text(desc)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(10)
                            .padding()
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            Text("$\(price).99")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(color)
                                .cornerRadius(25)
                                .padding()
                        }
                    }
                    .padding()
                    .transition(.slide)
                }
            }
            .padding(.bottom)
            
            Image(img)
                .resizable()
                .frame(width: 200, height: 200)
                .offset(x: 0, y: -100)
                .shadow(radius: 10)
                .transition(.slide)
        }
        .frame(height: 600)
        .background(Color(UIColor.systemBackground))
    }
}

struct CoffeeWidget_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeWidget(title: "Sample Coffee", desc: "Sample description", price: "5", img: "cupChoco", color: .brown, bg: "bgChoco")
    }
}

