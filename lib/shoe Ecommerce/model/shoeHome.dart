class Shoe {
  final String? image;
  final String? name;
  final String? category;
  final int? price;

  Shoe(this.image, this.name, this.category, this.price);
}

List<Shoe> home = [
  Shoe(
      "https://www.campusshoes.com/cdn/shop/products/FIRST_11G-787_L.GRY-BLK.jpg?v=1705644702",
      "Diabetic SportsShoe",
      "Men/Women",
      490),
  Shoe("https://m.media-amazon.com/images/I/61+hrj2FI5L._AC_UY1000_.jpg",
      "Diabetic SportsShoe", "Men/Women", 590),
  Shoe(
      "https://www.campusshoes.com/cdn/shop/products/FIRST_11G-787_L.GRY-BLK.jpg?v=1705644702",
      "Diabetic SportsShoe",
      "Men/Women",
      490),
];
