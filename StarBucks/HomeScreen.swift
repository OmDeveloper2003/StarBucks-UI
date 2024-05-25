import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                AppBar()
                TabView {
                    CoffeeWidget(title: "Choco Coffee", desc: "Indulge in the rich embrace of Starbuck's chocolate-infused coffee. Delight in the harmonious blend of smooth, robust coffee beans and decadent chocolate notes.", price: "6", img: "cupChoco", color: .brown, bg: "bgChoco")
                    CoffeeWidget(title: "Green Coffee", desc: "Indulge in the rich embrace of Starbuck's chocolate-infused coffee. Delight in the harmonious blend of smooth, robust coffee beans and decadent chocolate notes.", price: "9", img: "cupGreen", color: .green, bg: "bgGreen")
                    CoffeeWidget(title: "Black Coffee", desc: "Indulge in the rich embrace of Starbuck's chocolate-infused coffee. Delight in the harmonious blend of smooth, robust coffee beans and decadent chocolate notes.", price: "4", img: "cupGreen2", color: .black, bg: "bgGreen")
                }
                .tabViewStyle(PageTabViewStyle())
            }
            .background(Color(UIColor.systemBackground))
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

