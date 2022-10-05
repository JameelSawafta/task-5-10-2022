class DataModel{

  int? position;
  String? thumbnail;
  String? source;
  String? title;
  String? link;
  String? original;
  bool? isProduct;
  DataModel({
    this.position,
    this.thumbnail,
    this.source,
    this.title,
    this.link,
    this.original,
    this.isProduct,});

  DataModel.fromJson(dynamic json) {
    position = json['position'];
    thumbnail = json['thumbnail'];
    source = json['source'];
    title = json['title'];
    link = json['link'];
    original = json['original'];
    isProduct = json['is_product'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['position'] = position;
    map['thumbnail'] = thumbnail;
    map['source'] = source;
    map['title'] = title;
    map['link'] = link;
    map['original'] = original;
    map['is_product'] = isProduct;
    return map;
  }
}