# Neden Swift Değişkenlere İhtiyaç Duyar?

Değişkenler programımız ile alakalı bilgileri geçici olarak depolamamızı sağlar. Programımız herhangi bir bilgiyi eninde sonunda değiştirerek kullanıcıya gösterecektir. Belki kullanıcı bir to-do list uygulamasına yeni bir görev ekleyecek, belki görevi tamamlandı olarak değiştirecek. Şüphesiz herhangi bir uygulamada bir grup veriyi alırız, onu değiştirir ve kullanıcıya gösteririz.

Bu durumda ise değişkenlere ihtiyaç duyarız. Bazen kullanıcının gönderdiği bir mesajı depolamak isteriz, bazen de internetten indirdiğimiz bir görseli. 

Bir değişkeni oluşturmak için değişken isminin başına var anahtar sözcüğünü koyarız. Değerini değiştirmek istediğimiz zaman ise var anahtar sözcüğünü kullanmadan değiştirebiliriz. 

var anahtar sözcüğünü şöyle düşünebiliriz. Her var gördüğümüz yerde yeni bir değişken yarat. var anahtar sözcüğünün olmadığı ve eşittir operatörünü gördüğümüz yerde ise o değişkenin değiştiğini anlarız.

Eğer bir değişkeni yaratmadan kullanmaya çalışırsak Swift derleyicisi kodumuzu derlemeyi reddedecektir. Öncelikle o değişkeni yaratmamız gerektiğini söyleyecektir. 

Bu hatalar ilk başta rahatsız edici olarak görünse de sentaks hataları her zaman dostumuzdur. Çalışma zamanı hatası olmasından iyidir. Çünkü hatamızı uygulamayı çalıştırmadan görme fırsatı verir.


# Neden Swift Tip Güvenli Bir Dildir?

Swift herhangi bir türden değişken yaratmamıza izin verir. Değişkenin türünün ne olduğunu ilk değer verdiğimiz verinin türünen anlayabiliriz. Bir değişkene ilk değer olarak bir sayı verirsek o değişkenin veri tipi Int olacaktır. Ve swift dilinde bu asla değişemez. Buna yazılımda statik tip denir. Programın başka bir kısmında bu değişkene bir string atayamayız. Atamaya çalışırsak derleyici bize hata vererek kodumuzu derlemeyi reddedecektir. Bu yaklaşım ise yazılımda daha az hata yapmamızı sağlayacaktır. Program büyüdükçe değişkenlerimizin tiplerini takip etmek zorlaşacaktır.


# Neden Swift Çoklu Satır Stringlere İhtiyaç Duyar?

Swiftin normal stringleri birden fazla satırda yazılamaz. Birden fazla satır kullanılsın istiyorsak stringin içinde '\n' kullanmamız gerekir. Eğer çok uzun bir yazı yazacaksak bu kaynak kodumuzun içerisinde çok düzensiz bir görünüme kavuşabilir. Bundan dolayı çoklu satır stringlere ihtiyaç duyarız. Çoklu satır stringler 3 tırnak ile başlayıp 3 tırnak ile son bulur. İlk satır ve son satır stringe dahil edilmez. Yeni satıra geçmek için yalnızca enter'a basmamız yeterlidir. Eğer yeni  satıra geçmeden devam etmek istiyorsak satır sonuna backslush(\) koyarak enter tuşuna basabiliriz. Bu durumda kaynak kodda yeni satıra geçmiş oluruz fakat program içerisinde aynı satırdan devam eder.


# Neden Swift hem Int'e hem de Double'a sahiptir?

Swift bize sayıları tutmak için birden fazla yöntem sağlamaktadır. Ve bu yöntemler farklı sorunları çözmek için tasarlanmıştır. Swift bu türleri birbiriyle karıştırmamıza izin vermez. Int veri türü tam sayıları tutmak için kullanılır. Double veri türü ise ondalıklı sayıları tutmak için kullanılır. Eğer bir değişken için tür belirtmezsek ve sayının içinde nokta yok ise swift o değişkenin Int olmasına karar verir. Eğer o sayının içerisinde nokta varsa Double olmasına karar verir. Bir Double tür ile Int türü birbiri ile toplamak istediğimiz zaman hata alırız. Bu ilk başta bizi rahatsız edebilir fakat neden faydalı olduğunu kod yazdıkça anlayacağız.


# Neden Swift String Interpolation Gibi bir Özelliğe Sahip?

Bir kullanıcıya bir bilgi göstermek istediğimiz zaman genellikle string veri türünü kullanırız. Bir stringin içinde kullanıcının adını, yaşını ve yaşadığı ili göstermek isteyebiliriz. Bu bilgileri string'e dönüştürerek ve birbirine ekleyerek istediğimiz sonuca varabiliriz. Fakat swift bunu yapmak için bize daha kolay bir arayüz sunar. Stringlerin içinde herhangi bir veriyi göstermek için string interpolation kullanabiliriz. Stringimizin içinde '\()' sentaksını kullanarak bunu yapabiliriz. Herhangi bir veri tipi ile kullanabildiğimiz için çok kullanışlıdır.

https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0


# Neden Swift Sabitlere İhtiyaç Duyar?

Değişkenler verileri depolamamız için iyi bir yöntemdir. Swift bunu yapabilmek için bize 2. bir seçenek daha verir. Constants. Her yönü ile değişkenler ile aynıdır fakat içinde depoladığımız veri bir defa atanır bir daha değişmez. Hiç değişmeyecek veriler için constant kullanmalıyız. Bunun en büyük sebebi ise kodumuz büyüdükçe değişkeni yanlışıkla değiştirme ihtimalini elimizden almasıdır. Değişkeni değiştirmek istersek derleyici bize hata verir ve kodumuzu derlemez. 

# Neden Swift Tip Bildirimlerine İhtiyaç Duyar?

Swift bazen tür çıkarımını yapamaz veya yaptığı da istediğimiz gibi olmayabilir. Bazen bir değişkene ilk değer vermek istemeyebiliriz. Bazen olması gerekenden farklı bir tip kullanmak isteyebiliriz. Bu gibi durumlarda tip bildirimlerine ihtiyaç duyarız. Değişken isminden sonra bir kolon koyarak olması istediği türü yazarız. Böylece ilk değer verme zorunluluğumuz da ortadan kalkar. Fakat kodun okunabilirliğini arttırmak adına her zaman tip bildirimi kullanmak doğru değildir. Genellikle kullanmamayı tercih ederiz. Kullanmamak daha kısa bir kod sağlar ve okunabilirliği arttırır.

