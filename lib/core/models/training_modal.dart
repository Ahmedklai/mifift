import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'training_modal.freezed.dart';
part 'training_modal.g.dart';

@freezed
abstract class TrainingData {
  final String title;
  final int price;
  final String picture;
  final String document;
  final String description;
  final bool premium;
  final String book;
  final List<String> benefits;

  const TrainingData(
    this.title,
    this.price,
    this.picture,
    this.document,
    this.description,
    this.premium,
    this.book,
    this.benefits,
  );

  TrainingData copyWith({
    String title,
    int price,
    String picture,
    String document,
    String description,
    bool premium,
    String book,
    List<String> benefits,
  }) {
    return TrainingData(
      title ?? this.title,
      price ?? this.price,
      picture ?? this.picture,
      document ?? this.document,
      description ?? this.description,
      premium ?? this.premium,
      book ?? this.book,
      benefits ?? this.benefits,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'picture': picture,
      'document': document,
      'description': description,
      'premium': premium,
      'book': book,
      'benefits': benefits,
    };
  }

  factory TrainingData.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return TrainingData(
      map['title'],
      map['price'],
      map['picture'],
      map['document'],
      map['description'],
      map['premium'],
      map['book'],
      List<String>.from(map['benefits']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TrainingData.fromJson(String source) =>
      TrainingData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TrainingData(title: $title, price: $price, picture: $picture, document: $document, description: $description, premium: $premium, book: $book, benefits: $benefits)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is TrainingData &&
        o.title == title &&
        o.price == price &&
        o.picture == picture &&
        o.document == document &&
        o.description == description &&
        o.premium == premium &&
        o.book == book &&
        listEquals(o.benefits, benefits);
  }

  @override
  int get hashCode {
    return title.hashCode ^
        price.hashCode ^
        picture.hashCode ^
        document.hashCode ^
        description.hashCode ^
        premium.hashCode ^
        book.hashCode ^
        benefits.hashCode;
  }
}
