class Item {
  final String title;
  final String subtitle;
  final String urlImage;

  const Item({
    required this.title,
    required this.subtitle,
    required this.urlImage,
  });
}

const allItems =
[
  Item(title: 'Sepatu', subtitle: 'Aksesoris', urlImage: 'https://i.postimg.cc/5Q4JKL1J/sepatu.jpg'),
  Item(title: 'Topi', subtitle: 'Aksesoris', urlImage: 'https://i.postimg.cc/TybTKTQz/topi.jpg'),
  Item(title: 'Jam Tangan', subtitle: 'Aksesoris', urlImage: 'https://i.postimg.cc/1829R800/jam-tangan.jpg'),
  Item(title: 'Helm', subtitle: 'Aksesoris', urlImage: 'https://i.postimg.cc/qhd4nW5z/helm.jpg'),
  Item(title: 'Jaket', subtitle: 'Aksesoris', urlImage: 'https://i.postimg.cc/TLqGcQzQ/jaket.jpg'),
];