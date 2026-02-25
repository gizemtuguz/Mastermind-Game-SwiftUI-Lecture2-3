Hızlı Bir Review Yapalım:

*Şimdiye kadar öğrendiğimiz tüm kavramları kullanımları ve tanımları ile inceleyelim:*
 
**1. Temel Yapı Taşları: struct ve View**

SwiftUI'da her şey bir struct (yapı) üzerine kuruludur. Nesne tabanlı programlamadaki class (sınıf) yapısının aksine, struct'lar çok daha hafiftir.

Neden struct? Bir class kullandığınızda, sistem o nesneyi hafızada takip etmek zorundadır. Ancak SwiftUI'da ekran saniyede 60 kez yenilenebilir. Struct'lar "kullan-at" mantığıyla çalıştığı için inanılmaz hızlıdır.

View Protokolü: Bir struct'ın sadece bir veri yığını değil, ekranda görünebilir bir parça olması için View protokolüne uyması gerekir. Bu, Swift'e şu sözü vermektir: "Benim içimde ekranda çizilebilecek bir şeyler var."


**2. Kalp Atışı: var body: some View**

Bu satır, SwiftUI'ın en sihirli kısmıdır.

Computed Property: body bir değişken değil, bir "hesaplanan özelliktir". Siz ekrana her baktığınızda veya bir veri değiştiğinde, SwiftUI bu body içindeki kodu tekrar çalıştırır.

some View (Opaque Types): Bu ifade, "İçeride ne olduğu (VStack mi, Text mi) önemli değil, yeter ki View protokolüne uyan bir şey dönsün" demektir. Bu sayede karmaşık hiyerarşilerin tipini tek tek yazmak zorunda kalmayız.
 
 
**3. Düzenleyiciler: VStack ve @ViewBuilder**

VStack (Vertical Stack): Elemanları dikeyde üst üste dizer. SwiftUI'da elemanlar varsayılan olarak birbirinin üzerine binmez; bir düzenleyiciye ihtiyaç duyarlar.

@ViewBuilder: Bu bir "sonuç oluşturucu"dur (result builder). Normalde bir fonksiyon veya özellik sadece bir tane değer döndürebilir. Ancak @ViewBuilder sayesinde, bir süslü parantez { } içine 10 taneye kadar farklı View'u alt alta yazabiliriz. SwiftUI bunları otomatik olarak bir paket haline getirir.


**4. Estetik ve Fonksiyon: View Modifiers**

View Modifier'lar, mevcut bir View'u alıp üzerine yeni özellikler ekleyerek yeni bir View döndüren fonksiyonlardır.

Önemli Mantık: Bir Text'e .padding() eklediğinizde, artık elinizde sadece bir metin yoktur; etrafı boşlukla sarılmış yeni bir kutu vardır. Bu yüzden sıralama önemlidir! Önce rengi verip sonra büyütmek ile önce büyütüp sonra rengi vermek farklı sonuçlar doğurabilir.


**5. Yazılım Mimarisi: Decomposition ve Lego**

SwiftUI'da devasa kod dosyalarından kaçınırız.

Decomposition (Parçalara Ayırma): Eğer body kısmınız 50 satırı geçiyorsa, orada bir problem var demektir. Kodun bir kısmını seçip "Extract to Subview" diyerek yeni bir struct oluştururuz.

Lego Felsefesi: Tıpkı bir Lego setindeki gibi; önce tekerleği, sonra motoru, sonra gövdeyi yaparsınız. En sonunda bunları MainView içinde birleştirirsiniz. Bu, kodun test edilmesini ve tekrar kullanılmasını sağlar.

 
**6. Dinamik İçerik: ForEach ve enum**

ForEach: Bir listedeki verileri (örneğin bir rehberdeki isimler) alıp otomatik olarak View'lara dönüştürür. for döngüsünden farkı, veride bir değişiklik olduğunda sadece değişen satırı ekranda güncellemesidir.

enum: Kodunuzun "tip güvenliğini" sağlar. Örneğin bir düğmenin durumunu "açık/kapalı" olarak String ile tutmak yerine ("on"/"off"), bir enum ile tutarsınız. Böylece hata yapma şansınız kalmaz.

 
**7. İletişim: Closure Syntax**

Closure'lar, SwiftUI'ın "aksiyon" dilidir.

Bir butona basıldığında ne olacağını belirleyen kod bloğudur.

{ } içindeki bu kodlar, bir fonksiyonu değişken gibi taşımamıza izin verir. SwiftUI'daki çoğu yapı (VStack, Button, List) closure'lar sayesinde esnek hale gelir.


**8. Hızlı Geri Bildirim: #Preview**

Eskiden kodu yazıp, simülatörü başlatıp, 30 saniye bekleyip sonucu görüyorduk. #Preview sayesinde kodda bir virgül değiştirdiğiniz anda sağdaki Canvas'ta sonucu görürsünüz. Bu, tasarım sürecini 10 kat hızlandırır.

