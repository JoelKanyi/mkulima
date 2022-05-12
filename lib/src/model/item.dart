class Item {
  String? id;
  String? name;
  String? price;
  String? location;
  String? category;
  String? image;
  String? ownerId;
  String? ownerName;
  String? ownerContact;

  Item(
      {this.id,
      this.name,
      this.price,
      this.location,
      this.category,
      this.image,
      this.ownerId,
      this.ownerName,
      this.ownerContact});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    location = json['location'];
    category = json['category'];
    image = json['image'];
    ownerId = json['ownerId'];
    ownerName = json['ownerName'];
    ownerContact = json['ownerContact'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['location'] = this.location;
    data['category'] = this.category;
    data['image'] = this.image;
    data['ownerId'] = this.ownerId;
    data['ownerName'] = this.ownerName;
    data['ownerContact'] = this.ownerContact;
    return data;
  }
}
