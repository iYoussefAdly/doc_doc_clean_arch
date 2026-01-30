import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    String? name,
    required String email,
    String? phone,
    String? gender,
  }) : super(name: name, email: email, phone: phone, gender: gender);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      gender: json['gender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'phone': phone, 'gender': gender};
  }
}
