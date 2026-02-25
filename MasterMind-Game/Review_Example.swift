import SwiftUI

// 1. enum: Haber kategorilerini kısıtlı ve güvenli bir şekilde tanımlıyoruz.
enum Category: String {
    case tech = "Teknoloji"
    case health = "Sağlık"
    case science = "Bilim"
}

// 2. struct & View: Kendi özel "Lego" parçamızı oluşturuyoruz.
struct NewsCard: View {
    
    let title: String
    let category: Category
    
    // 3. var body: some View: Bu view'ın ekranda ne döndüreceğini hesaplar.
    var body: some View {
        // 4. VStack: Elemanları dikeyde hizalar.
        VStack(alignment: .leading, spacing: 10) {
            
            // 5. View Modifiers: Text'i özelleştiriyoruz.
            Text(category.rawValue.uppercased())
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.blue) // Modifiers birer fırça darbesi gibidir.
            
            Text(title)
                .font(.headline)
                .lineLimit(2)
            
            // 11. Closure Syntax: Button'ın aksiyonu bir closure içindedir { }
            Button {
                print("Detaylara gidiliyor...")
            } label: {
                Text("Devamını Oku")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity)
                    .padding(8)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

// 8. Decomposition: Ana ekranı küçük parçalara (NewsCard) bölerek yönetiyoruz.
struct NewsListView: View {
    
    let newsItems = [
        "SwiftUI ile Uygulama Geliştirme",
        "Yapay Zeka Dünyasında Yeni Gelişmeler",
        "Sağlıklı Yaşam İçin 10 İpucu"
    ]
    
    var body: some View {
        NavigationStack {
            // 9. ForEach: Veri listesini döner ve dinamik View'lar oluşturur.
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(newsItems, id: \.self) { news in
                        // Lego parçamızı (NewsCard) burada kullanıyoruz.
                        NewsCard(title: news, category: .tech)
                    }
                }
                .padding()
            }
            .navigationTitle("Haberler")
        }
    }
}

// 12. #Preview: Kodu anında sağdaki panelde görmemizi sağlar.
#Preview {
    NewsListView()
}
