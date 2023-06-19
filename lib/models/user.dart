class User {
  final int id;
  late String name;
  late String businessName;
  late String email;
  late String password;
  late String phoneNumber;
  late String address;

  User({
    required this.id,
    required this.name,
    required this.businessName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.address,
  });

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data["id"],
      name: data["name"],
      businessName: data["businessName"],
      email: data["email"],
      password: data["password"],
      address: data["address"],
      phoneNumber: data["phoneNuber"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "bussinesName": businessName,
      "email": email,
      "password": password,
      "address": address,
      "phoneNumber": phoneNumber,
    };
  }
}
