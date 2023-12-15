import Foundation

class ContentViewModel: ObservableObject {
    @Published var airbnbs: Airbnb = Airbnb(places: [Places]())
    
    func loadData() async {
        guard let url = URL(string: "https://api-airbnb-basic.onrender.com/airbnb") else {
            print("Invalid URL")
            return
        }
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decoder = try? JSONDecoder().decode(Airbnb.self, from: data) {
                DispatchQueue.main.async(execute: {
                    self.airbnbs = decoder
                })
            }
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

