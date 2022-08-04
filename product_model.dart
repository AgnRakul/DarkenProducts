// To parse this JSON data, do
//
//     final darkenProducts = darkenProductsFromJson(jsonString);

import 'dart:convert';

DarkenProducts darkenProductsFromJson(String str) => DarkenProducts.fromJson(json.decode(str));

String darkenProductsToJson(DarkenProducts data) => json.encode(data.toJson());

class DarkenProducts {
    DarkenProducts({
        this.product,
    });

    List<Product> product;

    factory DarkenProducts.fromJson(Map<String, dynamic> json) => DarkenProducts(
        product: List<Product>.from(json["Product"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Product": List<dynamic>.from(product.map((x) => x.toJson())),
    };
}

class Product {
    Product({
        this.image,
        this.url,
        this.name,
        this.nameUrl,
        this.price,
        this.priceUrl,
    });

    String image;
    String url;
    String name;
    String nameUrl;
    String price;
    String priceUrl;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        image: json["image"],
        url: json["url"],
        name: json["Name"],
        nameUrl: json["Name_url"],
        price: json["price"],
        priceUrl: json["price_url"],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "url": url,
        "Name": name,
        "Name_url": nameUrl,
        "price": price,
        "price_url": priceUrl,
    };
}
