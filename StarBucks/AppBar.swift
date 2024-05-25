import SwiftUI

struct AppBar: View {
    var body: some View {
        HStack {
            Image(systemName: "location.fill")
                .foregroundColor(.green)
                .font(.title)
            
            Spacer()
            
            NavigationLink(destination: SplashScreen()) {
                Image("logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .shadow(radius: 5)
            }
            
            Spacer()
            
            Image(systemName: "line.horizontal.3")
                .foregroundColor(.green)
                .font(.title)
        }
        .padding()
        .frame(height: 100)
        .background(Color(UIColor.systemBackground))
        .shadow(radius: 10)
    }
}

struct AppBar_Previews: PreviewProvider {
    static var previews: some View {
        AppBar()
    }
}

