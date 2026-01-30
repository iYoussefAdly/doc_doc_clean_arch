import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    String? name,
    required String email,
    String? phone,
    String? gender,
  }) : super(name: name, email: email, phone: phone, gender: gender);

  factory UserModel.fromJson(Map<String, dynamic> json, {String? email}) {
    // Handle potential nested user data structure
    final userData = json['user'] ?? json;
    
    return UserModel(
      name: userData['username'] as String? ?? userData['name'] as String?,
      email: email ?? userData['email'] as String? ?? '',
      phone: userData['phone'] as String?,
      gender: userData['gender'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'phone': phone, 'gender': gender};
  }
}
