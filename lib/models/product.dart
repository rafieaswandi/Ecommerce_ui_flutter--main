class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;

  const Product({
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });
}

final List<Product> products = [
  const Product(
    name: "Assault Rifle M4",
    category: "Weapons",
    price: 3500.00,
    oldPrice: 4200.00,
    imageUrl: "assets/images/assaultrifle.jpg",
    description: "Standard issue M4 assault rifle, lightweight and reliable for modern infantry use.",
  ),
    const Product(
    name: "Glock 19 Handgun",
    category: "Weapons",
    price: 900.00,
    oldPrice: 1200.00,
    imageUrl: "assets/images/glock19.jpeg",
    description: "Compact 9mm sidearm used by armed forces worldwide.",
  ),
  const Product(
    name: "FN MAG Machine Gun",
    category: "Weapons",
    price: 6200.00,
    oldPrice: 7000.00,
    imageUrl: "assets/images/fnmag.jpg",
    description: "7.62mm general-purpose machine gun for suppressive fire.",
  ),
  const Product(
    name: "Kevlar Ballistic Vest",
    category: "Gear",
    price: 1200.00,
    oldPrice: 1500.00,
    isFavorite: true,
    imageUrl: "assets/images/kevlarvest.png",
    description: "High protection Kevlar vest designed for battlefield durability.",
  ),
  const Product(
    name: "Abrams M1A2 SEPv3 MBT",
    category: "Tanks",
    price: 110000.00,
    oldPrice: 210000.00,
    imageUrl: "assets/images/abrams.jpg",
    description: "Main battle tank with advanced armor and firepower.",
  ),
  const Product(
    name: "Camouflage Uniform Set",
    category: "Uniforms",
    price: 300.00,
    oldPrice: 400.00,
    imageUrl: "assets/images/uniform.jpg",
    description: "Modern camouflage uniform suitable for multiple terrains.",
  ),
  const Product(
    name: "Tactical Boots",
    category: "Gear",
    price: 220.00,
    oldPrice: 320.00,
    imageUrl: "assets/images/boots.jpg",
    description: "Military-grade boots offering stability and durability.",
  ),
  const Product(
    name: "APC Armoured Vehicle",
    category: "Vehicles",
    price: 550000.00,
    oldPrice: 600000.00,
    imageUrl: "assets/images/apc.jpg",
    description: "All-purpose armoured personnel carrier with high mobility.",
  ),
  const Product(
    name: "Sniper Rifle AWM",
    category: "Weapons",
    price: 8500.00,
    oldPrice: 9500.00,
    imageUrl: "assets/images/awm.jpg",
    description: "Long-range precision sniper rifle chambered in .338 Lapua Magnum.",
  ),
  const Product(
    name: "5.56mm NATO Ammunition Pack",
    category: "Ammunition",
    price: 250.00,
    oldPrice: 300.00,
    imageUrl: "assets/images/ammo.jpeg",
    description: "Standard 5.56x45mm NATO rounds, 500-round bulk pack.",
  ),
];
