class Book {
  final String judul;
  final String penyusun;
  final String tahunterbit;
  final String halaman;
  final String harga;
  final double rate;
  final String picture;

  Book(
      {required this.judul,
      required this.penyusun,
      required this.tahunterbit,
      required this.halaman,
      required this.harga,
      required this.rate,
      required this.picture});
}

List<Book> masterBuku = [
  Book(
      judul: 'One Piece',
      penyusun: 'Eiichiro Oda',
      tahunterbit: '2003/10',
      halaman: '208',
      harga: 'Rp 150.000',
      rate: 4.6,
      picture: 'assets/images/onepiece.jpg'),
  Book(
      judul: 'Boruto',
      penyusun: 'Mikio Ikemoto',
      tahunterbit: '2016/05',
      halaman: '186',
      harga: 'Rp 55.000',
      rate: 4.5,
      picture: 'assets/images/boruto.jpg'),
  Book(
      judul: 'Girls Of The Wilds',
      penyusun: 'Kim Hye Jin',
      tahunterbit: '2011/08',
      halaman: '275',
      harga: 'Rp 98.000',
      rate: 4.2,
      picture: 'assets/images/girls-wild.jpeg'),
  Book(
      judul: 'Crayon Sinchan',
      penyusun: 'Yoshito Usui',
      tahunterbit: '2017/06',
      halaman: '20',
      harga: 'Rp 36.000',
      rate: 3.5,
      picture: 'assets/images/sinchan.jpeg'),
  Book(
      judul: 'Naruto Shippuden',
      penyusun: 'Masashi Kishimoto',
      tahunterbit: '2000/05',
      halaman: '244',
      harga: 'Rp 57.000',
      rate: 5.0,
      picture: 'assets/images/naruto.jpg'),
  Book(
      judul: 'Doraemon',
      penyusun: 'Fujiko F. Fujiko',
      tahunterbit: '2006/07',
      halaman: '184',
      harga: 'Rp 75.000',
      rate: 3.8,
      picture: 'assets/images/doraemon.jpeg'),
  Book(
      judul: 'One Punch Man',
      penyusun: 'Yusuke Murata',
      tahunterbit: '2012/06',
      halaman: '175',
      harga: 'Rp 25.000',
      rate: 3.3,
      picture: 'assets/images/one-punch.jpeg'),
  Book(
      judul: 'Dragon Ball',
      penyusun: 'Akira Toriyama',
      tahunterbit: '2012/11',
      halaman: '200',
      harga: 'Rp 85.000',
      rate: 4.5,
      picture: 'assets/images/dragon-ball.jpg'),
  Book(
      judul: 'The Jungle Books',
      penyusun: 'Rudyard Kipling',
      tahunterbit: '2016/05',
      halaman: '190',
      harga: 'Rp 100.000',
      rate: 4.7,
      picture: 'assets/images/jungle.jpg'),
  Book(
      judul: 'Detektif Conan',
      penyusun: 'Aoyama Gosho',
      tahunterbit: '2008/12',
      halaman: '115',
      harga: 'Rp 55.000',
      rate: 4.7,
      picture: 'assets/images/conan.jpeg')
];
