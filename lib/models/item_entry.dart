// To parse this JSON data, do
//
//     final itemEntry = itemEntryFromJson(jsonString);

import 'dart:convert';

List<List<ItemEntry>> itemEntryFromJson(String str) => List<List<ItemEntry>>.from(json.decode(str).map((x) => List<ItemEntry>.from(x.map((x) => ItemEntry.fromJson(x)))));

String itemEntryToJson(List<List<ItemEntry>> data) => json.encode(List<dynamic>.from(data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class ItemEntry {
    String model;
    String pk;
    Fields fields;

    ItemEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    int stock;
    String category;
    String rating;
    String discount;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.stock,
        required this.category,
        required this.rating,
        required this.discount,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        stock: json["stock"],
        category: json["category"],
        rating: json["rating"],
        discount: json["discount"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "stock": stock,
        "category": category,
        "rating": rating,
        "discount": discount,
    };
}
