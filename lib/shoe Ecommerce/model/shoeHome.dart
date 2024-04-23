class Shoe {
  int? id;
  String? name;
  String? image;
  String? description;
  Shoe({this.id, this.name, this.image, this.description});
}

List<Shoe> shoelist = [
  Shoe(
    id: 1,
    image: "https://www.campusshoes.com/cdn/shop/products/FIRST_11G-787_L.GRY-BLK.jpg?v=1705644702",
    name: "Diabetic SportsShoe",
    description: "Buy sports shoes, slippers, clogs, sneakers, formal shoes from Nike, Sparks, Red chief, Crocs and more at Amazon.in.",
  ),
  Shoe(
      id: 2,
      image: "https://m.media-amazon.com/images/I/61+hrj2FI5L._AC_UY1000_.jpg",
      name: "Diabetic SportsShoe",
      description: "Orthopedic & Diabetic Sports Shoes Breathable Soft Sole Ultra-Lightweight Running/Walking Sports Shoes for Men's 722 "),
  Shoe(
      id: 3,
      image: "https://www.campusshoes.com/cdn/shop/products/FIRST_11G-787_L.GRY-BLK.jpg?v=1705644702",
      name: "Diabetic SportsShoe",
      description: "HEALTH FIT Orthopedic & Diabetic Sports Shoes Breathable Soft Sole Ultra-Lightweight Running/Walking Sports Shoes for Men's 721BK-6 Black at Amazon.in.",
      ),
];
