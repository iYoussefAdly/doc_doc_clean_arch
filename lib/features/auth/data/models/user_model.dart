import 'package:doc_doc_clean_arch/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final String token;

  UserModel({
    String? name,
    required String email,
    String? phone,
    String? gender,
    required this.token,
  }) : super(name: name, email: email, phone: phone, gender: gender);
  factory UserModel.fromJson(
    Map<String, dynamic> json, {
    required String email,
    String? phone,
    String? gender,
  }) {
    final data = json['data'] ?? json;
    return UserModel(
      name: data['username'] as String?,
      email: email,
      phone: phone,
      gender: gender,
      token: data['token'] as String,
    );
  }
}
