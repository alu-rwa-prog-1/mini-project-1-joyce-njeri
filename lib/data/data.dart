// This data.dart file is our 'database' store for all the products
import 'package:Grocery_App/models/product.dart';
import 'package:Grocery_App/models/trending.dart';

// Create list for trending products
List<TrendingProduct> getTrendingProducts() {
  List<TrendingProduct> trendingProducts = new List<TrendingProduct>();
  TrendingProduct product = new TrendingProduct();
  //1
  product.weight = "100g";
  product.productName = "Bananas";
  product.imgURL = "assets/bananas.jpg";
  product.ratingValue = 4;
  product.rating = 4;
  product.price = 75;
  trendingProducts.add(product);
  product = new TrendingProduct();
  //2
  product.weight = "100g";
  product.productName = "Lemons";
  product.imgURL = "assets/lemons.jpg";
  product.ratingValue = 4;
  product.rating = 4;
  product.price = 75;
  trendingProducts.add(product);
  product = new TrendingProduct();
  //3
  product.weight = "100g";
  product.productName = "Sugar Cane";
  product.imgURL = "assets/sugarcane.jpg";
  product.ratingValue = 4;
  product.rating = 4;
  product.price = 75;
  trendingProducts.add(product);
  product = new TrendingProduct();

  return trendingProducts;
}

// Create list for top products
List<Product> getProducts() {
  List<Product> products = new List();
  Product product = new Product();
  //1
  product.productName = "Orange";
  product.ratingValue = 4;
  product.imgURL = "assets/orange.jpg";
  product.rating = 4;
  product.price = 20;
  products.add(product);
  product = new Product();
  //2
  product.productName = "Pineapple";
  product.ratingValue = 4;
  product.imgURL = "assets/pineapple.jpg";
  product.rating = 4;
  product.price = 20;
  products.add(product);
  product = new Product();
  //3
  product.productName = "Watermelon";
  product.ratingValue = 4;
  product.imgURL = "assets/watermelon.jpg";
  product.rating = 4;
  product.price = 20;
  products.add(product);
  product = new Product();
  //4
  product.productName = "Grapes";
  product.ratingValue = 4;
  product.imgURL = "assets/grapes.jpg";
  product.rating = 4;
  product.price = 20;
  products.add(product);
  product = new Product();

  return products;
}

// Create list for vegetable products
List<Product> getVegProducts() {
  List<Product> vegProducts = new List();
  Product vegProduct = new Product();
  //1
  vegProduct.productName = "Carrots";
  vegProduct.ratingValue = 4;
  vegProduct.imgURL = "assets/carrots.jpg";
  vegProduct.rating = 4;
  vegProduct.price = 20;
  vegProducts.add(vegProduct);
  vegProduct = new Product();
  //2
  vegProduct.productName = "Broccoli";
  vegProduct.ratingValue = 4;
  vegProduct.imgURL = "assets/broccoli.png";
  vegProduct.rating = 4;
  vegProduct.price = 20;
  vegProducts.add(vegProduct);
  vegProduct = new Product();
  //3
  vegProduct.productName = "Cauliflower";
  vegProduct.ratingValue = 4;
  vegProduct.imgURL = "assets/cauliflower.jpg";
  vegProduct.rating = 4;
  vegProduct.price = 20;
  vegProducts.add(vegProduct);
  vegProduct = new Product();
  //4
  vegProduct.productName = "Cabbage";
  vegProduct.ratingValue = 4;
  vegProduct.imgURL = "assets/cabbage.jpg";
  vegProduct.rating = 4;
  vegProduct.price = 20;
  vegProducts.add(vegProduct);
  vegProduct = new Product();
  //5
  vegProduct.productName = "Bell Pepper";
  vegProduct.ratingValue = 4;
  vegProduct.imgURL = "assets/bell_pepper.jpg";
  vegProduct.rating = 4;
  vegProduct.price = 20;
  vegProducts.add(vegProduct);
  vegProduct = new Product();
  //6
  vegProduct.productName = "Onions";
  vegProduct.ratingValue = 4;
  vegProduct.imgURL = "assets/onions.jpg";
  vegProduct.rating = 4;
  vegProduct.price = 20;
  vegProducts.add(vegProduct);
  vegProduct = new Product();
  return vegProducts;
}

// Create list for bakery products
List<Product> getBakeryProducts() {
  List<Product> bakeryProducts = new List();
  Product bakeryProduct = new Product();
  //1
  bakeryProduct.productName = "Flour";
  bakeryProduct.ratingValue = 4;
  bakeryProduct.imgURL = "assets/flour.jpeg";
  bakeryProduct.rating = 4;
  bakeryProduct.price = 20;
  bakeryProducts.add(bakeryProduct);
  bakeryProduct = new Product();
  //2
  bakeryProduct.productName = "Eggs";
  bakeryProduct.ratingValue = 4;
  bakeryProduct.imgURL = "assets/eggs.jpg";
  bakeryProduct.rating = 4;
  bakeryProduct.price = 20;
  bakeryProducts.add(bakeryProduct);
  bakeryProduct = new Product();
  //3
  bakeryProduct.productName = "Baking Powder";
  bakeryProduct.ratingValue = 4;
  bakeryProduct.imgURL = "assets/baking_powder.jpg";
  bakeryProduct.rating = 4;
  bakeryProduct.price = 20;
  bakeryProducts.add(bakeryProduct);
  bakeryProduct = new Product();
  //4
  bakeryProduct.productName = "Cinnamon";
  bakeryProduct.ratingValue = 4;
  bakeryProduct.imgURL = "assets/cinnamon.jpg";
  bakeryProduct.rating = 4;
  bakeryProduct.price = 20;
  bakeryProducts.add(bakeryProduct);
  bakeryProduct = new Product();
  return bakeryProducts;
}

// Create list for drink products
List<Product> getDrinkProducts() {
  List<Product> drinkProducts = new List();
  Product drinkProduct = new Product();
  //1
  drinkProduct.productName = "Coca Cola";
  drinkProduct.ratingValue = 4;
  drinkProduct.imgURL = "assets/cocacola.png";
  drinkProduct.rating = 4;
  drinkProduct.price = 20;
  drinkProducts.add(drinkProduct);
  drinkProduct = new Product();
  //2
  drinkProduct.productName = "Milk";
  drinkProduct.ratingValue = 4;
  drinkProduct.imgURL = "assets/milk.jpeg";
  drinkProduct.rating = 4;
  drinkProduct.price = 20;
  drinkProducts.add(drinkProduct);
  drinkProduct = new Product();
  //3
  drinkProduct.productName = "Quencher Juice";
  drinkProduct.ratingValue = 4;
  drinkProduct.imgURL = "assets/quencher_juice.jpg";
  drinkProduct.rating = 4;
  drinkProduct.price = 20;
  drinkProducts.add(drinkProduct);
  drinkProduct = new Product();
  return drinkProducts;
}

// Create list for offers
// This will take the same variables as our getTrendingProducts() method
List<TrendingProduct> getOffers() {
  List<TrendingProduct> offers = new List<TrendingProduct>();
  TrendingProduct offer = new TrendingProduct();
  //1
  offer.weight = "800g";
  offer.productName = "Fruit Basket";
  offer.imgURL = "assets/allfruits.jpg";
  offer.ratingValue = 4;
  offer.rating = 4;
  offer.price = 560;
  offers.add(offer);
  offer = new TrendingProduct();
  //2
  offer.weight = "1000g";
  offer.productName = "Fruit Basket";
  offer.imgURL = "assets/allfruits.jpg";
  offer.ratingValue = 4;
  offer.rating = 4;
  offer.price = 600;
  offers.add(offer);
  offer = new TrendingProduct();

  return offers;
}
