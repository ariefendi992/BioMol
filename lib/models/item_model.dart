class ItemModel {
  int id;
  String name;
  String value;
  bool isAccepted;

  ItemModel({
    required this.id,
    required this.name,
    required this.value,
    this.isAccepted = false,
  });

  // factory ItemModel.fromJson(Map<String, dynamic> json) {
  //   return ItemModel(name: json['name'], value: json['value']);
  // }
}
