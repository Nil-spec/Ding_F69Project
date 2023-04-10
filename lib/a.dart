class Gorev {
  String ad;
  bool tamamlandiMi;

  Gorev({required this.ad, required this.tamamlandiMi});
}

class GorevVeri {
  List<List<Gorev>> _gorevler = [
    [
      Gorev(ad: 'Oryantasyon buluşmasına katıl.', tamamlandiMi: false),
      Gorev(ad: 'Unity Giriş Eğitimini %100 tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Yazılımcılar için İngilizce derslerinin 2 modülünü tamamla. (SEÇENLER İÇİN ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Teknoloji Girişimciliği Eğitimlerinin %50’sini tamamla. Tüm eğitimler toplamda 12 saat, 6 saatini tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Google Proje Yönetimi Eğitimlerinin 1. kursunu  tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: "Networking atölyesini tamamla. 1'ine katılım yeterli.", tamamlandiMi: false),
      Gorev(ad: 'Sosyal Beceri Eğitimlerine katıl', tamamlandiMi: false),
      Gorev(ad: 'Kariyer Buluşması’na katıl.', tamamlandiMi: true),
      Gorev(ad: 'Zaman Yönetimi etkinliğine katıl.', tamamlandiMi: false),
      Gorev(ad: 'Github BTK Akademi derslerine göz at ve Akademi Github görevlerini tamamla.', tamamlandiMi: false),
    ],
    [
      Gorev(ad: 'Deprem nedeniyle topluluk iletişimi odağa alındı, görevler Temmuz ayına dek uzatıldı. Depremden etkilenen arkadaşlarımıza 2023 yılı bursiyeri olma hakkı verildi. Bu hakkı kullanmak isteyen arkadaşlarımız sistemlerden çıkarılacak ve seneye sıfırdan tüm eğitimleri alacaklar, Slack kanalında kalmaya devam edebilecekler.', tamamlandiMi: true),
    ],
    [
      Gorev(ad: 'Unity Uzmanlık Eğitimlerinin 1-10 arası modüllerini (%34) tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Google Proje Yönetimi Eğitimlerinin 2. kursunu tamamla. (ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Yazılımcılar için İngilizce derslerinin ilk 4 modülünü tamamla.(SEÇENLER İÇİN ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Teknoloji Girişimciliği Eğitimlerini %100 tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Ideathon’a katıl.', tamamlandiMi: false),
      Gorev(ad: 'Ayın Github görevlerini tamamla.', tamamlandiMi: false),
      Gorev(ad: 'Canlı yayınlara katıl.', tamamlandiMi: false),
    ],
    [
      Gorev(ad: 'Unity Uzmanlık Eğitimlerinin 11-19 arası modüllerini (%70) tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Google Proje Yönetimi Eğitimlerinin 3.kursunu tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Yazılımcılar için İngilizce derslerinin ilk 6 modülünü tamamla.(SEÇENLER İÇİN ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Game & App Jam’e katıl.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Canlı yayınlara katıl.', tamamlandiMi: false),
    ],
    [
    Gorev(ad: 'Unity Uzmanlık Eğitimini %100 tamamla.(ZORUNLU)', tamamlandiMi: false),
    Gorev(ad: 'Google Proje Yönetimi Eğitimlerinin 4. ve 5.kursunu tamamla.(ZORUNLU)', tamamlandiMi: false),
    Gorev(ad: 'Yazılımcılar için İngilizce derslerini %100(8 modül) tamamla.(SEÇENLER İÇİN ZORUNLU)', tamamlandiMi: false),
    Gorev(ad: 'Kariyer Zirvesine Katıl. (ZORUNLU)', tamamlandiMi: false),
    Gorev(ad: 'Canlı yayınlara katıl.', tamamlandiMi: false),
    ],
    [
      Gorev(ad: 'Eksik kalan tüm eğitimlerini tamamla! Rozetlerini al', tamamlandiMi: false),
      Gorev(ad: 'Google Proje Yönetimi Eğitimlerinin 6.kursunu tamamla.(ZORUNLU)', tamamlandiMi: false),
      Gorev(ad: 'Kariyer Buluşması’na Katıl.', tamamlandiMi: false),
      Gorev(ad: 'Mezuniyet BOOTCAMP’ine Odaklan.', tamamlandiMi: false),
      Gorev(ad: 'Canlı yayınlara katıl.', tamamlandiMi: false),
    ],
    [
      Gorev(ad: 'BOOTCAMP’i tamamla.', tamamlandiMi: false),
      Gorev(ad: 'Mezuniyet Törenine katıl.', tamamlandiMi: false),
      Gorev(ad: 'Sertifikalarını al.', tamamlandiMi: false),
      Gorev(ad: 'Mezunlar ağına dahil ol', tamamlandiMi: false),
    ],
    // diğer aylara ait görevler buraya eklenebilir
  ];

  List<String> aylar = [
    'Ocak',
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
  ];

  List<Gorev> getGorevlerForMonth(int ay) {
    return _gorevler[ay - 1];
  }

  Gorev getGorevForMonth(int ay, int index) {
    return _gorevler[ay - 1][index];
  }
}